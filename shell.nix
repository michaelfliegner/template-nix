# https://nix.dev/tutorials/declarative-and-reproducible-developer-environments
with import <nixpkgs> { };

mkShell {
  LOCALE_ARCHIVE_2_27 = "${glibcLocales}/lib/locale/locale-archive";
  
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
    exportLOCALE_ARCHIVE=/usr/lib/locale/locale-archive
    export LANG="en_US.UTF-8"
    LC_ALL="en_US.UTF-8"
    LC_CTYPE="en_US.UTF-8"
 '';
}
