// 🚀 Astro 設定ファイル `astro-site/astro.config.mjs`
import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";

export default defineConfig({
  site: "http://localhost:4321/",
  contentDir: "src/content",
  integrations: [
    tailwind(),  // ✅ ここが正しい！
    mdx(),
    sitemap()
  ],
  outDir: "dist",
  markdown: {
    syntaxHighlight: "prism",
  },
});
