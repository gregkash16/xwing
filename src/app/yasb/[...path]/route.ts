import { NextRequest, NextResponse } from 'next/server'
import { getIronSession } from 'iron-session'
import { sessionOptions, SessionUser } from '@/lib/session'
import { cookies } from 'next/headers'
import { readFile } from 'fs/promises'
import path from 'path'
import { existsSync } from 'fs'

const MIME_TYPES: Record<string, string> = {
  '.html': 'text/html',
  '.js': 'application/javascript',
  '.css': 'text/css',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.gif': 'image/gif',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
  '.woff': 'font/woff',
  '.woff2': 'font/woff2',
  '.ttf': 'font/ttf',
  '.eot': 'application/vnd.ms-fontobject',
  '.json': 'application/json',
  '.map': 'application/json',
  '.otf': 'font/otf',
}

export async function GET(
  req: NextRequest,
  { params }: { params: { path: string[] } }
) {
  // Auth check — must have a valid session
  const session = await getIronSession<{ user?: SessionUser }>(cookies(), sessionOptions)

  if (!session.user) {
    return NextResponse.redirect(new URL('/login', req.url))
  }

  // Only check Discord role for HTML requests, not every asset (CSS/JS/fonts/images)
  const reqExt = path.extname(params.path[params.path.length - 1])
  if (!reqExt || reqExt === '.html') {
    const memberRes = await fetch(
      `https://discord.com/api/guilds/${process.env.DISCORD_GUILD_ID}/members/${session.user.id}`,
      {
        headers: { Authorization: `Bot ${process.env.DISCORD_BOT_TOKEN}` },
        cache: 'no-store',
      }
    )

    if (!memberRes.ok) {
      return NextResponse.redirect(new URL('/denied?reason=not_in_server', req.url))
    }

    const memberData = await memberRes.json()
    const hasRole = memberData.roles.includes(process.env.DISCORD_ROLE_ID!)

    if (!hasRole) {
      return NextResponse.redirect(new URL('/denied?reason=no_role', req.url))
    }
  }

  // Serve the file
  const filePath = path.join(process.cwd(), 'yasb-build', ...params.path)

  if (!existsSync(filePath)) {
    return new NextResponse('Not found', { status: 404 })
  }

  const ext = path.extname(filePath)
  const mimeType = MIME_TYPES[ext] ?? 'application/octet-stream'
  const fileBuffer = await readFile(filePath)

  return new NextResponse(fileBuffer, {
    headers: { 'Content-Type': mimeType },
  })
}