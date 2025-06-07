{
  outputs = {
    nixpkgs,
    flake-utils,
    self
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
          nixd

          ocaml
          dune_3
          ocamlformat
          ocamlPackages.ocaml-lsp
          ocamlPackages.utop

          (vscode-with-extensions.override {
            vscode = vscodium;
            vscodeExtensions = with vscode-extensions; [
              mkhl.direnv
              ocamllabs.ocaml-platform
              jnoortheen.nix-ide
            ];
          })
        ];
      };
    });
}
