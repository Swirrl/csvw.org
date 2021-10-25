#!/bin/bash

BASE=${1-/}

mkdir -p build
cp source/*.css source/*.js source/*.js.map build
echo | pandoc -o build/index.html --template source/index.html --metadata title="CSV on the Web"  --variable base=$BASE
pandoc -o build/standards.html --template source/page.html.template -f markdown-native_divs source/standards.html --metadata title="Standards" --variable base=$BASE
pandoc -o build/tools.html --template source/tools.html.template source/tools.md --variable base=$BASE
mkdir -p build/guides
cp source/guides/*.png build/guides
pandoc -o build/guides.html --template source/page.html.template source/guides.md --variable base=$BASE
pandoc -o build/guides/why-use-csvw.html --template source/page.html.template -f markdown-native_divs source/guides/why-use-csvw.html --metadata title="Guides" --variable base=$BASE
pandoc -o build/guides/how-to-make-csvw.html --template source/page.html.template -f markdown-native_divs source/guides/how-to-make-csvw.html --metadata title="Guides" --variable base=$BASE
