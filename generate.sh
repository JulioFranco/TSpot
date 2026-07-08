#!/bin/bash
# Compiles the public-site stylesheets into the webroot (public/css/).
# stylesFooter.scss and stylesForums.scss are deliberately not built here.
set -e
cd "$(dirname "$0")"

OUT=../public/css

ENTRYPOINTS=(
	stylesCat
	stylesCatDesk
	styles
	stylesDesk
	stylesDown
	stylesDownDesk
	stylesFooterComm
	stylesHome
	stylesHomeDesk
	stylesNews
	stylesNewsDesk
	stylesPF
	stylesPFDesk
	stylesReviews
	stylesReviewsDesk
	stylesTrivia
	stylesSpecs
	stylesSpecsDesk
)

for name in "${ENTRYPOINTS[@]}"; do
	sass "css/${name}.scss" "${OUT}/${name}.css" --style compressed
done