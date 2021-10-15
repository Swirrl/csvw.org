#!/bin/bash

mkdir -p build
cp source/*.html source/*.css source/*.js source/*.js.map build
pandoc -o build/standards.html --template source/page.html.template source/standards.md
pandoc -o build/tools.html --template source/tools.html.template source/tools.md
pandoc -o build/guides.html --template source/page.html.template source/guides.md