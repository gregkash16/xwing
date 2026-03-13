import { NextResponse } from 'next/server'
import { getIronSession } from 'iron-session'
import { sessionOptions } from '@/lib/session'
import { cookies } from 'next/headers'

export async function GET() {
  const session = await getIronSession(cookies(), sessionOptions)
  session.destroy()
  return NextResponse.redirect(
    new URL('/login', process.env.NEXT_PUBLIC_BASE_URL!)
  )
}
