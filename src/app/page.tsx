import { redirect } from 'next/navigation'
import { getIronSession } from 'iron-session'
import { sessionOptions, SessionUser } from '@/lib/session'
import { cookies } from 'next/headers'

export default async function Home() {
  const session = await getIronSession<{ user?: SessionUser }>(cookies(), sessionOptions)
  if (session.user) {
    redirect('/builder')
  } else {
    redirect('/login')
  }
}
