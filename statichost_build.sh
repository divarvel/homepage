#!/usr/bin/env sh

set -euo pipefail

sudo apk add gmp-dev oniguruma-dev git
opam-2.5 install dune
opam-2.5 env > opam.env
source opam.env
opam-2.4 update
opam-2.4 install . --deps-only -y
dune build
_build/install/default/bin/homepage
