'use client'

import { useSearchParams } from 'next/navigation'
import { Suspense } from 'react'

const ERROR_MESSAGES: Record<string, string> = {
  no_code: 'Authorization cancelled. Please try again.',
  token_failed: 'Discord login failed. Please try again.',
  user_failed: 'Could not retrieve your Discord profile. Please try again.',
  unknown: 'Something went wrong. Please try again.',
}

function LoginContent() {
  const searchParams = useSearchParams()
  const error = searchParams.get('error')

  return (
    <main className="login-root">
      <div className="stars" aria-hidden="true">
        {Array.from({ length: 80 }).map((_, i) => (
          <span key={i} className="star" style={{
            left: `${Math.random() * 100}%`,
            top: `${Math.random() * 100}%`,
            animationDelay: `${Math.random() * 4}s`,
            animationDuration: `${2 + Math.random() * 3}s`,
            width: `${1 + Math.random() * 2}px`,
            height: `${1 + Math.random() * 2}px`,
          }} />
        ))}
      </div>

      <div className="login-card">
        <div className="faction-icon" aria-hidden="true">✦</div>
        <h1 className="title">X-Wing Playtest</h1>
        <p className="subtitle">Restricted Access</p>
        <p className="description">
          This squad builder is for authorized playtesters only.<br />
          Login with Discord to verify your access.
        </p>

        {error && (
          <div className="error-banner">
            {ERROR_MESSAGES[error] ?? 'An error occurred. Please try again.'}
          </div>
        )}

        <a href="/api/auth/login" className="discord-btn">
          <svg className="discord-logo" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
            <path d="M20.317 4.37a19.791 19.791 0 0 0-4.885-1.515.074.074 0 0 0-.079.037c-.21.375-.444.864-.608 1.25a18.27 18.27 0 0 0-5.487 0 12.64 12.64 0 0 0-.617-1.25.077.077 0 0 0-.079-.037A19.736 19.736 0 0 0 3.677 4.37a.07.07 0 0 0-.032.027C.533 9.046-.32 13.58.099 18.057c.002.022.015.043.031.053a19.9 19.9 0 0 0 5.993 3.03.078.078 0 0 0 .084-.028 14.09 14.09 0 0 0 1.226-1.994.076.076 0 0 0-.041-.106 13.107 13.107 0 0 1-1.872-.892.077.077 0 0 1-.008-.128 10.2 10.2 0 0 0 .372-.292.074.074 0 0 1 .077-.01c3.928 1.793 8.18 1.793 12.062 0a.074.074 0 0 1 .078.01c.12.098.246.198.373.292a.077.077 0 0 1-.006.127 12.299 12.299 0 0 1-1.873.892.077.077 0 0 0-.041.107c.36.698.772 1.362 1.225 1.993a.076.076 0 0 0 .084.028 19.839 19.839 0 0 0 6.002-3.03.077.077 0 0 0 .032-.054c.5-5.177-.838-9.674-3.549-13.66a.061.061 0 0 0-.031-.03z"/>
          </svg>
          Login with Discord
        </a>

        <p className="footer-note">
          Access is granted by server role only.<br />Contact your league admin if you need access.
        </p>
      </div>

      <style>{`
        @import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;900&family=Rajdhani:wght@300;400;500&display=swap');

        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        .login-root {
          min-height: 100vh;
          background: #05070f;
          display: flex;
          align-items: center;
          justify-content: center;
          font-family: 'Rajdhani', sans-serif;
          overflow: hidden;
          position: relative;
        }

        .stars { position: absolute; inset: 0; pointer-events: none; }

        .star {
          position: absolute;
          background: #fff;
          border-radius: 50%;
          animation: twinkle ease-in-out infinite;
        }

        @keyframes twinkle {
          0%, 100% { opacity: 0.15; }
          50% { opacity: 0.9; }
        }

        .login-card {
          position: relative;
          z-index: 10;
          background: linear-gradient(145deg, rgba(255,255,255,0.04), rgba(255,255,255,0.01));
          border: 1px solid rgba(255, 180, 0, 0.25);
          border-radius: 4px;
          padding: 3rem 2.5rem;
          width: min(420px, 92vw);
          text-align: center;
          box-shadow: 0 0 60px rgba(255, 160, 0, 0.08), inset 0 1px 0 rgba(255,255,255,0.06);
          backdrop-filter: blur(12px);
        }

        .login-card::before {
          content: '';
          position: absolute;
          top: -1px; left: 20px; right: 20px;
          height: 2px;
          background: linear-gradient(90deg, transparent, rgba(255,180,0,0.6), transparent);
        }

        .faction-icon {
          font-size: 2.5rem;
          color: #ffb400;
          display: block;
          margin-bottom: 1rem;
          filter: drop-shadow(0 0 12px rgba(255,180,0,0.5));
          animation: pulse 3s ease-in-out infinite;
        }

        @keyframes pulse {
          0%, 100% { filter: drop-shadow(0 0 8px rgba(255,180,0,0.4)); }
          50% { filter: drop-shadow(0 0 20px rgba(255,180,0,0.8)); }
        }

        .title {
          font-family: 'Orbitron', sans-serif;
          font-size: 1.6rem;
          font-weight: 900;
          color: #fff;
          letter-spacing: 0.08em;
          text-transform: uppercase;
          margin-bottom: 0.25rem;
        }

        .subtitle {
          font-family: 'Orbitron', sans-serif;
          font-size: 0.65rem;
          font-weight: 600;
          color: #ffb400;
          letter-spacing: 0.25em;
          text-transform: uppercase;
          margin-bottom: 1.75rem;
        }

        .description {
          color: rgba(255,255,255,0.45);
          font-size: 0.95rem;
          line-height: 1.7;
          margin-bottom: 2rem;
          font-weight: 300;
        }

        .error-banner {
          background: rgba(255, 60, 60, 0.12);
          border: 1px solid rgba(255, 60, 60, 0.35);
          color: #ff8080;
          padding: 0.75rem 1rem;
          border-radius: 3px;
          font-size: 0.875rem;
          margin-bottom: 1.5rem;
        }

        .discord-btn {
          display: inline-flex;
          align-items: center;
          gap: 0.6rem;
          background: #5865F2;
          color: #fff;
          text-decoration: none;
          padding: 0.85rem 2rem;
          border-radius: 3px;
          font-family: 'Orbitron', sans-serif;
          font-size: 0.8rem;
          font-weight: 600;
          letter-spacing: 0.06em;
          text-transform: uppercase;
          transition: all 0.2s ease;
          box-shadow: 0 4px 20px rgba(88, 101, 242, 0.35);
        }

        .discord-btn:hover {
          background: #4752c4;
          transform: translateY(-1px);
          box-shadow: 0 6px 28px rgba(88, 101, 242, 0.5);
        }

        .discord-logo { width: 18px; height: 18px; flex-shrink: 0; }

        .footer-note {
          margin-top: 1.75rem;
          color: rgba(255,255,255,0.2);
          font-size: 0.8rem;
          line-height: 1.6;
          font-weight: 300;
        }
      `}</style>
    </main>
  )
}

export default function LoginPage() {
  return (
    <Suspense>
      <LoginContent />
    </Suspense>
  )
}
