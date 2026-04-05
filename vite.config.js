import { defineConfig } from 'vite';

export default defineConfig({
  root: '.',
  base: '/EBFSession02/',   // crucial for GitHub Pages
  build: {
    outDir: 'dist',
  },
  server: { port: 3000 }
});