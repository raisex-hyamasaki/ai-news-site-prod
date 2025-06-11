@echo off
echo 📰 RSS記事取得中...
python feed_fetcher.py
if errorlevel 1 (
  echo ❌ RSS取得に失敗しました
  exit /b 1
)

cd astro-site || exit /b
echo 📦 Astro依存インストール中...
npm install
if errorlevel 1 (
  echo ❌ npm install 失敗
  exit /b 1
)

echo 🏗 Astroビルド実行中...
npm run build
if errorlevel 1 (
  echo ❌ Astroビルド失敗
  exit /b 1
)

echo ✅ ビルド完了！dist フォルダが生成されました。
