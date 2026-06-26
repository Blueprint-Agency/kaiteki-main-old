# kaiteki-main-old

Curated **legacy kaiteki.my** site, containerised for an **interim deployment** at
`kaiteki.teeko.ai` on BPVPS1 while the Next.js rebuild (`kaiteki-main`) is in progress.

- **Stack:** static HTML + light PHP (PHP 8.1 / Apache, `mod_rewrite`). No CMS, no database.
- **Contents:** English root pages + 9 branch pages, `/cn/` (Chinese), `assets/` media,
  PHPMailer contact forms. Excludes the WordPress blog (runs separately on
  `blog.kaiteki.my`), backups, and the Singapore (`/sg/`) site.
- **Image:** `blueprintagency/kaiteki-main-old` (built + pushed by GitHub Actions).
- **Deploy:** GHA → Docker Hub → BPVPS1 (`/root/stacks/kaiteki`), routed by Traefik.

> Source of truth for the running compose file is the infrastructure repo:
> `vps/bpvps1/stacks/kaiteki/docker-compose.yml`.

## Local preview

```bash
docker build -t kaiteki-old .
docker run --rm -p 8080:80 kaiteki-old   # http://localhost:8080
```

### Known caveats
- `.htaccess` contains a few hardcoded `https://kaiteki.my/...` pretty-URL 301s; on
  `kaiteki.teeko.ai` those shortcuts redirect to the live domain (real `.html`/`.php`
  pages load directly and are unaffected).
- Contact forms need SMTP credentials at runtime to actually send email.
