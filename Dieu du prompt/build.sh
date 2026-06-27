#!/usr/bin/env bash
# Génère le PDF depuis le markdown via LaTeX (lualatex).
# Pipeline : markdown --(pandoc)--> main.tex --(lualatex ×2)--> PDF
# Dans le markdown, [[PAGE - X]] insère un saut de page manuel.
#
# Prérequis : pandoc, lualatex (texlive-luatex/-latex-extra/-pictures),
#             texlive-fonts-recommended, texlive-lang-french,
#             fonts-noto-color-emoji.

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
MD="$REPO_DIR/Devenir Dieu du Prompt Engineering - version simplifiee.md"
STYLE="$REPO_DIR/style.tex"
FRONT="$REPO_DIR/frontmatter.tex"
COVER_SRC="$REPO_DIR/couverture.png"
OUTPUT="$REPO_DIR/Devenir Dieu du Prompt Engineering.pdf"

WORK="/tmp/livre"
mkdir -p "$WORK"

echo "→ Préparation de l'espace de travail ($WORK)"
cp "$COVER_SRC" "$WORK/cover.png"   # nom sans espace pour \includegraphics

echo "→ Prétraitement du markdown"
# 1) Retire le titre H1 et le sous-titre (rendus par frontmatter.tex)
# 2) Remplace le bloc HTML « ## Sommaire » par un \tableofcontents LaTeX
PRE="$WORK/content_preprocessed.md"
awk '
  /^# Devenir un dieu du Prompt Engineering[[:space:]]*$/ { next }
  /^### Édition enrichie[[:space:]]*$/                     { next }
  /^## Sommaire[[:space:]]*$/ {
      skip = 1
      print "\\clearpage"
      print "\\tableofcontents"
      print "\\clearpage"
      next
  }
  skip && /^## / { skip = 0 }   # début du chapitre suivant : on réimprime
  skip          { next }
  { print }
' "$MD" > "$PRE.tmp"
# 3) Saut de page manuel [[PAGE - X]] -> \newpage
sed 's/\[\[PAGE - [^]]*\]\]/\\newpage/g' "$PRE.tmp" > "$PRE"
rm -f "$PRE.tmp"

echo "→ Conversion markdown → LaTeX (pandoc)"
pandoc "$PRE" \
  --from markdown \
  --to latex \
  --standalone \
  --wrap=preserve \
  -V documentclass=extarticle \
  -V fontsize=13pt \
  -V papersize=a4 \
  -V geometry:top=22mm \
  -V geometry:bottom=25mm \
  -V geometry:left=22mm \
  -V geometry:right=22mm \
  -V lang=fr \
  -V colorlinks=true \
  -V linkcolor=brun \
  -V urlcolor=brunfonce \
  -V toccolor=brun \
  --include-in-header="$STYLE" \
  --include-before-body="$FRONT" \
  -o "$WORK/main.tex"

echo "→ Compilation LaTeX (lualatex, 2 passes pour le sommaire)"
( cd "$WORK" && \
  lualatex -interaction=nonstopmode -halt-on-error main.tex > lualatex.log 2>&1 && \
  lualatex -interaction=nonstopmode -halt-on-error main.tex >> lualatex.log 2>&1 ) || {
    echo "✗ Échec de compilation. Dernières lignes du journal :"
    tail -40 "$WORK/lualatex.log"
    exit 1
  }

cp "$WORK/main.pdf" "$OUTPUT"

echo "✓ PDF généré : $OUTPUT"
echo "  Pages : $(pdfinfo "$OUTPUT" | grep '^Pages:' | awk '{print $2}')"
