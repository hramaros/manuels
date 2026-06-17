#!/usr/bin/env bash
# Génère le PDF depuis le markdown.
# Usage: ./build.sh
# Dans le markdown, [[PAGE - X]] insère un saut de page manuel.

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
MD="$REPO_DIR/Devenir Dieu du Prompt Engineering - version simplifiee.md"
WORK="/tmp/livre"
CSS="$WORK/style.css"
COVER_HTML="$WORK/cover.html"
OUTPUT="$REPO_DIR/Devenir Dieu du Prompt Engineering.pdf"

WKHTML="/usr/local/bin/wkhtmltopdf"
[ -x "$WKHTML" ] || WKHTML="wkhtmltopdf"

echo "→ Prétraitement : [[PAGE - X]] → saut de page HTML"
# Remplace [[PAGE - X]] (toute valeur X) par un div CSS saut-page
sed 's/\[\[PAGE - [^]]*\]\]/<div class="saut-page"><\/div>/g' "$MD" > "$WORK/content_preprocessed.md"

echo "→ Conversion markdown → HTML (pandoc)"
pandoc "$WORK/content_preprocessed.md" \
  --from markdown \
  --to html5 \
  --standalone \
  --css "$CSS" \
  --highlight-style pygments \
  -o "$WORK/main.html" 2>/dev/null || \
pandoc "$WORK/content_preprocessed.md" \
  --from markdown \
  --to html5 \
  --standalone \
  --css "$CSS" \
  --highlight-style pygments \
  -o "$WORK/main.html"

echo "→ Génération main.pdf (wkhtmltopdf)"
"$WKHTML" \
  --enable-local-file-access \
  --page-size A4 \
  --margin-top 22mm \
  --margin-right 20mm \
  --margin-bottom 25mm \
  --margin-left 20mm \
  --footer-right "[page]" \
  --footer-font-size 9 \
  --footer-font-name "DejaVu Serif" \
  --footer-spacing 5 \
  --page-offset 1 \
  "$WORK/main.html" "$WORK/main.pdf"

echo "→ Génération cover.pdf"
"$WKHTML" \
  --enable-local-file-access \
  --page-size A4 \
  --margin-top 0 --margin-right 0 --margin-bottom 0 --margin-left 0 \
  "$COVER_HTML" "$WORK/cover.pdf"

echo "→ Fusion cover + contenu"
pdfunite "$WORK/cover.pdf" "$WORK/main.pdf" "$OUTPUT"

echo "✓ PDF généré : $OUTPUT"
echo "  Pages : $(pdfinfo "$OUTPUT" | grep '^Pages:' | awk '{print $2}')"
