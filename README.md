# MATH-4306

Partial Differential Equations - SP26 - Tarleton State University

## Requirements
Build locally with the [LaTeX Workshop Extension](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) in VSCode, or manually compile the files:
- [TeX Live](https://www.tug.org/texlive/)

Alternatively, you can use a ready-made docker container and let it do the work for you:
- [act](https://nektosact.com/introduction.html)
- [Docker Engine](https://docs.docker.com/engine/install/)

## Usage

VSCode / Manual Compilation:

Open any TeX file and click the Build button or `CTRL + ALT + B` to build the file.

This will effectively run (which you can run manually if you're not using VSCode):
```bash
latexmk -lualatex -interaction=nonstopmode -outdir=solutions/build/ <file>
```

The output PDF will be in the `./solutions/build/` directory.

Alternatively, with act / docker you can simply run:
```bash
act push -b -q
```

The PDF files will then be placed in the `./.github/workflows/artifacts/` directory.
