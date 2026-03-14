import { NextRequest, NextResponse } from 'next/server'
import { getIronSession } from 'iron-session'
import { sessionOptions, SessionUser } from './src/lib/session'


export async function middleware(req: NextRequest) {
  console.log('MIDDLEWARE HIT:', req.nextUrl.pathname)
  const res = NextResponse.next()

  const session = await getIronSession<{ user?: SessionUser }>(req, res, sessionOptions)

  console.log('Middleware hit, user:', session.user?.id ?? 'none')

  // No session at all — send to login
  if (!session.user) {
    return NextResponse.redirect(new URL('/login', req.url))
  }

  // Check Discord role on every request
  try {
    console.log('Checking role for user:', session.user.id)
    const memberRes = await fetch(
      `https://discord.com/api/guilds/${process.env.DISCORD_GUILD_ID}/members/${session.user.id}`,
      {
        headers: { Authorization: `Bot ${process.env.DISCORD_BOT_TOKEN}` },
        cache: 'no-store',
      }
    )
    console.log('Discord API status:', memberRes.status)

    if (!memberRes.ok) {
      session.destroy()
      return NextResponse.redirect(new URL('/denied?reason=not_in_server', req.url))
    }

    const memberData = await memberRes.json()
    const hasRole = memberData.roles.includes(process.env.DISCORD_ROLE_ID!)

    if (!hasRole) {
      session.destroy()
      return NextResponse.redirect(new URL('/denied?reason=no_role', req.url))
    }
  } catch (err) {
    console.error('Role check failed:', err)
  }

  return res
}

export const config = {
  matcher: ['/builder/:path*', '/yasb/:path*'],
}