# csvw.org

Static site generator for [csvw.org](http://csvw.org) using [pandoc](https://pandoc.org/).

To build the site run `./build.sh`.

You can optionally provide a `base` as an argument. This is used to rebase the site into a sub-directory for github-pages.

To serve the site locally run e.g. `cd build && python3 -m http.server 8000`.

The github action will build any pushes to the `main` branch and publish this to github-pages.

## Contributions

We'd be delighted to receive contributions, particularly to provide more guides or highlight useful tools. If you've got an idea please [raise an new issue](https://github.com/Swirrl/csvw.org/issues/new).

## License

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.