import { getIronSession } from 'iron-session'
import { sessionOptions, SessionUser } from '@/lib/session'
import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'

export default async function BuilderPage() {
  const session = await getIronSession<{ user?: SessionUser }>(cookies(), sessionOptions)

  if (!session.user) {
    redirect('/login')
  }

  // Re-check Discord role on every page load
  const memberRes = await fetch(
    `https://discord.com/api/guilds/${process.env.DISCORD_GUILD_ID}/members/${session.user!.id}`,
    {
      headers: { Authorization: `Bot ${process.env.DISCORD_BOT_TOKEN}` },
      cache: 'no-store',
    }
  )

  if (!memberRes.ok) {
    redirect('/denied?reason=not_in_server')
  }

  const memberData = await memberRes.json()
  const hasRole = memberData.roles.includes(process.env.DISCORD_ROLE_ID!)

  if (!hasRole) {
    redirect('/denied?reason=no_role')
  }

  const user = session.user!

  const avatarUrl = user.avatar
    ? `https://cdn.discordapp.com/avatars/${user.id}/${user.avatar}.png`
    : `https://cdn.discordapp.com/embed/avatars/0.png`

  return (
    <>
      <div className="topbar">
        <span className="topbar-title">X-Wing Playtest Builder</span>
        <div className="user-info">
          <img src={avatarUrl} alt="" className="avatar" />
          <span className="username">{user.username}</span>
          <a href="/api/auth/logout" className="logout-btn">Logout</a>
        </div>
      </div>
      <iframe
        src="/yasb/index.html"
        className="builder-frame"
        title="X-Wing Squad Builder"
      />
      <style>{`
        @import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@600&family=Rajdhani:wght@400;500&display=swap');

        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        html, body { height: 100%; overflow: hidden; background: #05070f; }

        .topbar {
          height: 44px;
          background: rgba(5, 7, 15, 0.95);
          border-bottom: 1px solid rgba(255, 180, 0, 0.2);
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 0 1.25rem;
          position: fixed;
          top: 0; left: 0; right: 0;
          z-index: 100;
          backdrop-filter: blur(8px);
        }

        .topbar-title {
          font-family: 'Orbitron', sans-serif;
          font-size: 0.7rem;
          font-weight: 600;
          color: #ffb400;
          letter-spacing: 0.15em;
          text-transform: uppercase;
        }

        .user-info {
          display: flex;
          align-items: center;
          gap: 0.6rem;
          font-family: 'Rajdhani', sans-serif;
        }

        .avatar {
          width: 26px;
          height: 26px;
          border-radius: 50%;
          border: 1px solid rgba(255,180,0,0.3);
        }

        .username { color: rgba(255,255,255,0.6); font-size: 0.875rem; font-weight: 500; }

        .logout-btn {
          color: rgba(255,255,255,0.3);
          text-decoration: none;
          font-size: 0.8rem;
          padding: 0.2rem 0.5rem;
          border: 1px solid rgba(255,255,255,0.1);
          border-radius: 3px;
          transition: all 0.2s;
        }

        .logout-btn:hover {
          color: rgba(255,255,255,0.7);
          border-color: rgba(255,255,255,0.3);
        }

        .builder-frame {
          position: fixed;
          top: 44px; left: 0;
          width: 100%;
          height: calc(100vh - 44px);
          border: none;
        }
      `}</style>
    </>
  )
}
