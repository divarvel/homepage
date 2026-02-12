{ pkgs ? import <unstable> {} }: with pkgs;

mkShell {
  buildInputs = [
    bubblewrap
    pkg-config
    gmp
    opam
    oniguruma
  ];
}
