from caddy:builder-alpine as builder

run xcaddy build \
  --with github.com/caddy-dns/route53@v1.6.0

from caddy:alpine
copy --from=builder /usr/bin/caddy /usr/bin/caddy
