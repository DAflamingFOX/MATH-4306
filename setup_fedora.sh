#! /bin/bash

# Install make, latexmk, TeXLive, and required LaTeX packages
sudo dnf in -y \
    make \
    latexmk \
    texlive-scheme-basic \
    texlive-amscls \
    texlive-amsmath \
    texlive-enumitem \
    texlive-epstopdf \
    texlive-etoolbox \
    texlive-cancel \
    texlive-dejavu \
    texlive-fontspec \
    texlive-geometry \
    texlive-graphics \
    texlive-parskip \
    texlive-pgf \
    texlive-pgfplots \
    texlive-stix2-otf \
    texlive-tools \
    texlive-unicode-math \
    texlive-xcolor \
    texlive-xfakebold