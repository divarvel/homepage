#!/usr/bin/env sh

set -euo pipefail

sudo apk add gmp-dev oniguruma-dev
opam install dune
opam env > opam.env
source opam.env
opam update
opam install . --deps-only -y
dune build
_build/install/default/bin/homepage
