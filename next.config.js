/** @type {import('next').NextConfig} */
const nextConfig = {
  outputFileTracingIncludes: {
    '/yasb/(.*)': ['./yasb-build/**/*'],
  },
}
module.exports = nextConfig