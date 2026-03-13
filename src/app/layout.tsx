import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'X-Wing Playtest Builder',
  description: 'Authorized playtesters only.',
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body style={{ margin: 0, padding: 0, background: '#05070f' }}>
        {children}
      </body>
    </html>
  )
}
