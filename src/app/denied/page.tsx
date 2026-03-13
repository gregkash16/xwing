'use client'

import { useSearchParams } from 'next/navigation'
import { Suspense } from 'react'

function DeniedContent() {
  const searchParams = useSearchParams()
  const reason = searchParams.get('reason')

  const message = reason === 'not_in_server'
    ? "You're not a member of the playtest Discord server."
    : "You don't have the required role in the playtest server."

  return (
    <main className="denied-root">
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

      <div className="denied-card">
        <div className="icon" aria-hidden="true">⊘</div>
        <h1 className="title">Access Denied</h1>
        <p className="subtitle">Clearance Not Found</p>
        <p className="description">{message}</p>
        <p className="description">
          Contact your league admin to be added as an authorized playtester.
        </p>
        <a href="/login" className="back-btn">← Try Another Account</a>
      </div>

      <style>{`
        @import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;900&family=Rajdhani:wght@300;400;500&display=swap');

        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        .denied-root {
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

        .denied-card {
          position: relative;
          z-index: 10;
          background: linear-gradient(145deg, rgba(255,255,255,0.04), rgba(255,255,255,0.01));
          border: 1px solid rgba(255, 60, 60, 0.25);
          border-radius: 4px;
          padding: 3rem 2.5rem;
          width: min(420px, 92vw);
          text-align: center;
          box-shadow: 0 0 60px rgba(255, 60, 0, 0.06), inset 0 1px 0 rgba(255,255,255,0.06);
          backdrop-filter: blur(12px);
        }

        .denied-card::before {
          content: '';
          position: absolute;
          top: -1px; left: 20px; right: 20px;
          height: 2px;
          background: linear-gradient(90deg, transparent, rgba(255,60,60,0.6), transparent);
        }

        .icon {
          font-size: 2.5rem;
          color: #ff4444;
          display: block;
          margin-bottom: 1rem;
          filter: drop-shadow(0 0 12px rgba(255,60,60,0.5));
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
          color: #ff4444;
          letter-spacing: 0.25em;
          text-transform: uppercase;
          margin-bottom: 1.75rem;
        }

        .description {
          color: rgba(255,255,255,0.45);
          font-size: 0.95rem;
          line-height: 1.7;
          margin-bottom: 1rem;
          font-weight: 300;
        }

        .back-btn {
          display: inline-block;
          margin-top: 1rem;
          color: rgba(255,255,255,0.35);
          text-decoration: none;
          font-size: 0.85rem;
          letter-spacing: 0.05em;
          transition: color 0.2s;
        }

        .back-btn:hover { color: rgba(255,255,255,0.7); }
      `}</style>
    </main>
  )
}

export default function DeniedPage() {
  return (
    <Suspense>
      <DeniedContent />
    </Suspense>
  )
}
