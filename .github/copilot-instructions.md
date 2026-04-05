# Copilot Instructions

## Project Overview

Interactive lecture slides for **Empirische Bildungsforschung (EBF) — Session 2: Regression Bootcamp** at FAU Nürnberg-Erlangen. Built with [Reveal.js](https://revealjs.com/) and Vite, deployed to GitHub Pages.

## Development Commands

```bash
make dev        # Start dev server at http://localhost:3000
make build      # Production build → dist/
yarn preview    # Serve the production build locally
```

## Architecture

All slide content lives in `index.html` as a flat/nested tree of `<section>` elements inside `.reveal > .slides`. `main.js` imports Reveal.js and initializes the deck. There are no components, routes, or modules — the entire presentation is one HTML file.

```
index.html          # All slide content (single source of truth)
main.js             # Reveal.js initialization (hash: true, center: true)
vite.config.js      # Base path /EBFSession02/ for GitHub Pages, port 3000
public/
  audio/            # MP3 narration files (one per slide section)
  media/            # Images, GIFs (backgrounds, diagrams)
  font/             # Custom fonts
Plots_Bootcamp.R    # R/ggplot2 script that generates the plot assets
```

## Reveal.js Slide Conventions

**Basic slide:**
```html
<section>
  <h2>Slide Title</h2>
  <p>Content here</p>
</section>
```

**Vertical (nested) slides:**
```html
<section>
  <section><!-- parent/title --></section>
  <section><!-- child slide --></section>
</section>
```

**Background image:**
```html
<section data-background-image="public/media/filename.gif">
```

**Audio narration** (each major slide carries its own audio element):
```html
<audio controls>
  <source src="public/audio/segment-name.mp3" type="audio/mpeg">
</audio>
```

## Deployment

Vite is configured with `base: '/EBFSession02/'` for GitHub Pages. After `make build`, the `dist/` folder is the deployable artifact. All asset paths must be relative to this base.
