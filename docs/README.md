# Kaiteki Rebuild — Documentation

Research, audit, and design docs for rebuilding [kaiteki.my](https://kaiteki.my) on Next.js with best-in-class SEO/AEO. Read top-to-bottom; later docs assume earlier ones.

## Locked project decisions

| Decision | Choice |
|---|---|
| Stack | Next.js (App Router) + TypeScript |
| Languages | **English first**, i18n-ready (Chinese later) |
| Blog | Migrate WordPress → in-repo **MDX** at `kaiteki.my/blog` |
| Content mgmt | **None — pure code** (MDX + typed data, no CMS) |
| Conversion | **WhatsApp-only** (pre-filled deep-links) |

## Document index

### Phase 1 — Audit & Standards ✅
| # | Doc | What it is |
|---|-----|-----------|
| 01 | [`01-legacy-site-audit.md`](./01-legacy-site-audit.md) | The **old** site: full page/URL inventory, redirects, conversion model, SEO debt, and a draft 301 migration map. |
| 02 | [`02-seo-guidelines-2026.md`](./02-seo-guidelines-2026.md) | **Pure SEO/AEO best-practice reference** — technical, performance/CWV, schema, on-page, content, internal linking/anchor text, E-E-A-T, YMYL/medical (incl. Malaysia rules), AEO/GEO, local & multi-location, reputation, measurement. The standard everything else must meet. |

### Phase 2 — Proposals & Design ⏳ (planned)
| # | Doc | What it will cover |
|---|-----|-----------|
| 03 | `03-competitor-analysis.md` | Teardown of `cliniccleo.com` + aesthetic-industry benchmarks (design, structure, SEO, content, AEO presence) — what to beat and how. |
| 04 | `04-information-architecture.md` | Proposed site structure, clean URL scheme, navigation, breadcrumb & **internal-linking/anchor-text plan**, sitemap, full **301 redirect map** from `docs/01`. |
| 05 | `05-content-strategy.md` | Page-by-page content & messaging; **E-E-A-T pages** (doctors, credentials, licenses, awards, medical-reviewer); topic clusters; FAQ/AEO content; trust elements (social links, certifications); compliant medical copy. |
| 06 | `06-uiux-design-system.md` | Design language, design system/tokens, components, page templates, responsive & accessibility, motion — aimed at beating competitors aesthetically. |
| 07 | `07-technical-architecture.md` | Next.js architecture, **page templatization** (treatment / concern / location / doctor / blog templates; shared header & footer), data model (MDX/typed content), i18n-ready routing, **error handling & logging**, redirects/sitemaps/robots, performance, analytics & WhatsApp-conversion tracking, deployment. |

> Phase 2 docs are written on request, in order. Each should be validated against `docs/02` before implementation.

## Conventions

- Docs are numbered for reading order; cross-reference by number/section (e.g. "see `docs/02` §9").
- `docs/02` uses priority labels **[P1] / [P2] / [P3]** (do-first → nice-to-have) and *Kaiteki application* callouts.
- The legacy site lives (git-ignored) in `../well-known/` — reference only.
