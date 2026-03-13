import { SessionOptions } from 'iron-session'

export interface SessionUser {
  id: string
  username: string
  avatar: string | null
  discriminator: string
}

declare module 'iron-session' {
  interface IronSessionData {
    user?: SessionUser
  }
}

export const sessionOptions: SessionOptions = {
  password: process.env.SESSION_SECRET as string,
  cookieName: 'xwing-playtest-session',
  cookieOptions: {
    secure: process.env.NODE_ENV === 'production',
    httpOnly: true,
    sameSite: 'lax',
    maxAge: 60 * 60 * 24 * 7, // 7 days
  },
}
