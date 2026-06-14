#!/usr/bin/env sh

set -euxo pipefail

pwd
whoami
ls -al
sudo chown opam:opam -R .
ls -al

sudo apk add gmp-dev oniguruma-dev git
opam env > opam.env
source opam.env
opam update
opam upgrade
opam install --verbose . --deps-only -y
opam exec --verbose -- dune build --profile=release
opam exec --verbose -- dune exec bin/homepage.exe
