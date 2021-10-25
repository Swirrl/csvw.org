#!/bin/bash

mkdir -p build
cp source/*.css source/*.js source/*.js.map build
echo | pandoc -o build/index.html --template source/index.html --metadata title="CSV on the Web"
pandoc -o build/standards.html --template source/page.html.template -f markdown-native_divs source/standards.html --metadata title="Standards"
pandoc -o build/tools.html --template source/tools.html.template source/tools.md
mkdir -p build/guides
cp source/guides/*.png build/guides
pandoc -o build/guides.html --template source/page.html.template source/guides.md
pandoc -o build/guides/why-use-csvw.html --template source/page.html.template -f markdown-native_divs source/guides/why-use-csvw.html --metadata title="Guides"
pandoc -o build/guides/how-to-make-csvw.html --template source/page.html.template -f markdown-native_divs source/guides/how-to-make-csvw.html --metadata title="Guides"
