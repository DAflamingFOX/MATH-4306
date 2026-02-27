# MATH-4306

Partial Differential Equations - SP26 - Tarleton State University

## Requirements / Usage

There are two ways to build this project:
- Using [TeX Live](https://www.tug.org/texlive/) and [make](https://www.gnu.org/software/make/) (faster, requires a few GB of storage for install)
- Using [Docker Engine](https://docs.docker.com/engine/install/) and [act](https://nektosact.com/introduction.html) (slower, but no persistant TeX Live install required)

### TeX Live

For this method, we will require a [TeX Live](https://www.tug.org/texlive/) along with all the required packages used by the TeX sources.

The use of [make](https://www.gnu.org/software/make/) is optional, but the `Makefile` is configured to build all TeX sources for you by simply running `make`, this will output all the PDF files into the `artifacts/` directory.

Alternatively, you can build the TeX sources manually via `latexmk -pdflua -interaction=nonstopmode -nobibtex -outdir=build -out2dir=artifacts <*.tex>`

You can also use the [LaTeX Workshop Extension](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) in VSCode to build the TeX files, you can configure it to auto-compile, and it can even provide linting. See their documentation for more info, and see above for how to configure the compilation.

### Docker

This project is also built using GitHub Actions, which you can run locally using act and docker.

This method requires the following tools to be installed:
- [act](https://nektosact.com/introduction.html)
- [Docker Engine](https://docs.docker.com/engine/install/)

Using the `act push -b` command will spin up a docker container that is linked to your working directory. Then it will *temporarily* install all the required packages, then compile the TeX files. After it has finished it's job the container is deleted, thus you have no persistant TeX Live installation.
