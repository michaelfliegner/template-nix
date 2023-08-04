# https://nix.dev/tutorials/declarative-and-reproducible-developer-environments
with import <nixpkgs> { };

mkShell {

  # Package names can be found via https://search.nixos.org/packages
  nativeBuildInputs = [
    direnv
    ghc
    cabal2nix
    cabal-install
    hlint
    postgresql
  ];

  NIX_ENFORCE_PURITY = true;

  shellHook = ''
  '';
}
