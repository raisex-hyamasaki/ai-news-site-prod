#!/bin/bash

echo "📰 RSS記事取得中..."
python3 feed_fetcher.py || { echo "❌ RSS取得に失敗"; exit 1; }

echo "📦 Astro依存インストール中..."
cd astro-site || exit
npm install || { echo "❌ npm install失敗"; exit 1; }

echo "🏗 Astroビルド実行中..."
npm run build || { echo "❌ Astroビルド失敗"; exit 1; }

echo "✅ ビルド完了！dist フォルダが生成されました。"
