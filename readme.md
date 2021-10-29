# csvw.org

Static site generator for [csvw.org](http://csvw.org) using [pandoc](https://pandoc.org/).

To build the site run `./build.sh`.

You can optionally provide a `base` as an argument. This is used to rebase the site into a sub-directory for github-pages.

To serve the site locally run e.g. `cd build && python3 -m http.server 8000`.

The github action will build any pushes to the `main` branch and publish this to github-pages.

## Contributions

We'd be delighted to receive contributions, particularly to provide more guides or highlight useful tools. If you've got an idea please [raise an new issue](https://github.com/Swirrl/csvw.org/issues/new).