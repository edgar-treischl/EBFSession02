# Copilot Instructions

## Project Overview

Educational lecture presentation for "Empirische Bildungsforschung (EBF)" at FAU Nürnberg-Erlangen, built with **Reveal.js v5** and **Vite**. The output is a single-page interactive slide deck deployed to GitHub Pages.

## Commands

```bash
yarn dev        # Dev server at http://localhost:3000
yarn build      # Production build → dist/
yarn preview    # Serve dist/ locally
```

No test or lint commands are configured.

## Architecture

- **`index.html`** — The entire presentation content (all slides live here)
- **`main.js`** — Initializes Reveal.js; minimal config (`hash: true`, `center: true`)
- **`custom.css`** — Overrides the Reveal.js white theme with FAU branding
- **`public/`** — Static assets (audio, video, images) copied as-is to `dist/`
- **`vite.config.js`** — Sets `base: '/EBFSession01/'` for GitHub Pages routing

The `dist/` directory is the production build output; do not edit it directly.

## Slide Structure Conventions

Slides follow standard Reveal.js HTML:
```html
<div class="reveal">
  <div class="slides">
    <section><!-- horizontal slide --></section>
    <section>
      <section><!-- vertical (nested) slide --></section>
    </section>
  </div>
</div>
```

- **Horizontal navigation**: top-level `<section>` elements
- **Vertical navigation**: nested `<section>` within a parent `<section>`
- **Progressive reveal**: add `class="fragment fade-up"` to elements
- **Background images/iframes**: `data-background-image`, `data-background-iframe` attributes on `<section>`

## CSS Conventions

Custom utility classes defined in `custom.css`:

| Class | Purpose |
|---|---|
| `.text-color` | Primary burgundy (#8D1429) emphasis |
| `.correct-answer` | Green (#006d2c) for quiz answers |
| `.responsive` | Image at 60% width |
| `.medium` | Image at 75% width |
| `.vertical-video-box` | Right-aligned 50%-width video overlay |

Color palette: `#8D1429` (primary), `#006d2c` (correct/success), `#2b8cbe` (highlight), `#00008B` (links/controls).

## Asset Paths

All assets in `public/` are referenced with absolute paths from root:
- Audio: `/audio/a1.mp3` … `/audio/a8a.mp3`
- Video: `/video/v1.mp4`, `/video/v2.mp4`
- Images: `/media/FAU-Siegel22.png`, `/media/ET.PNG`, etc.

Vite copies `public/` contents verbatim to `dist/` — no hashing applied to these files.

## Deployment

The `base: '/EBFSession01/'` in `vite.config.js` is required for GitHub Pages. Do not remove or change this without updating the deployment target. The built `dist/` is what gets deployed.
