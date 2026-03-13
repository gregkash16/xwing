import { NextRequest, NextResponse } from 'next/server'
import { getIronSession } from 'iron-session'
import { cookies } from 'next/headers'
import { sessionOptions, SessionUser } from '@/lib/session'

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url)
  const code = searchParams.get('code')

  if (!code) {
    return NextResponse.redirect(new URL('/login?error=no_code', req.url))
  }

  try {
    // 1. Exchange code for access token
    const tokenRes = await fetch('https://discord.com/api/oauth2/token', {
      method: 'POST',
      headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
      body: new URLSearchParams({
        client_id: process.env.DISCORD_CLIENT_ID!,
        client_secret: process.env.DISCORD_CLIENT_SECRET!,
        grant_type: 'authorization_code',
        code,
        redirect_uri: `${process.env.NEXT_PUBLIC_BASE_URL}/api/auth/callback`,
      }),
    })

    if (!tokenRes.ok) {
      console.error('Token exchange failed:', await tokenRes.text())
      return NextResponse.redirect(new URL('/login?error=token_failed', req.url))
    }

    const { access_token } = await tokenRes.json()

    // 2. Get Discord user info
    const userRes = await fetch('https://discord.com/api/users/@me', {
      headers: { Authorization: `Bearer ${access_token}` },
    })

    if (!userRes.ok) {
      return NextResponse.redirect(new URL('/login?error=user_failed', req.url))
    }

    const userData = await userRes.json()

    // 3. Check guild membership + role using bot token
    const memberRes = await fetch(
      `https://discord.com/api/guilds/${process.env.DISCORD_GUILD_ID}/members/${userData.id}`,
      {
        headers: { Authorization: `Bot ${process.env.DISCORD_BOT_TOKEN}` },
      }
    )

    if (!memberRes.ok) {
      // Not in the server at all
      return NextResponse.redirect(new URL('/denied?reason=not_in_server', req.url))
    }

    const memberData = await memberRes.json()
    const hasRole = memberData.roles.includes(process.env.DISCORD_ROLE_ID!)

    if (!hasRole) {
      return NextResponse.redirect(new URL('/denied?reason=no_role', req.url))
    }

    // 4. Create session
    const session = await getIronSession<{ user?: SessionUser }>(cookies(), sessionOptions)
    session.user = {
      id: userData.id,
      username: userData.username,
      avatar: userData.avatar,
      discriminator: userData.discriminator ?? '0',
    }
    await session.save()

    return NextResponse.redirect(new URL('/builder', req.url))
  } catch (err) {
    console.error('Auth callback error:', err)
    return NextResponse.redirect(new URL('/login?error=unknown', req.url))
  }
}
