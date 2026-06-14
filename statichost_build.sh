#!/usr/bin/env sh

set -euo pipefail

sudo apk add gmp-dev oniguruma-dev git
opam env > opam.env
source opam.env
opam update
opam upgrade
opam install . --deps-only -y
opam exec -- dune build --profile=release
opam exec -- dune exec bin/homepage.exe
