import { redirect } from 'next/navigation'
import { getIronSession } from 'iron-session'
import { sessionOptions } from '@/lib/session'
import { cookies } from 'next/headers'

export default async function Home() {
  const session = await getIronSession(cookies(), sessionOptions)
  if (session.user) {
    redirect('/builder')
  } else {
    redirect('/login')
  }
}
