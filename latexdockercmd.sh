#!/bin/sh
IMAGE=blang/latex:ctanfull


# Define repository for obtaining LaTeX packages (using TexLive 2015)
sudo tlmgr option repository ftp://tug.org/historic/systems/texlive/2015/tlnet-final

# ----------------------------------------------------------------------------
#   INSTALL ADDITIONAL PACKAGES HERE
# ----------------------------------------------------------------------------

sudo tlmgr install \
    hyperref       \
    parskip        \
    babel          \
    tools          \
    graphics       \
    xcolor

exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"

