#!/usr/bin/env sh

set -euxo pipefail

# the repo is checked out by root
# but the docker image runs as opam
sudo chown opam:opam -R .
sudo apk add gmp-dev oniguruma-dev git
opam env > opam.env
source opam.env
opam update
opam upgrade
opam install . --deps-only -y
opam exec -- dune build --profile=release
opam exec -- dune exec bin/homepage.exe
