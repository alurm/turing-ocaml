# Turing machines in OCaml (work in progress)

# Tips

## Entering the development environment

The environment is defined at `flake.nix` using Nix.

It has `dune` (the OCaml build system), OCaml's LSP and VS Code with the OCaml extension and some other extensions.

Details: if you have `direnv`, you should enter the devenv automatically after you `direnv allow` the project. VS Code `direnv` extension is installed to update VS Code extensions after modifying `flake.nix`.

If you have `nix` installed, you can enter the devenv with `nix develop` and start VS Code with `codium .` (technically VS Codium is used, an open source version of VS Code.)

### Installing Nix

There are multiple ways to install Nix. You can try one described at https://docs.determinate.systems. You need flakes and the Nix command to be enabled in Nix.

For an unprivileged installation of Nix, you can try using https://github.com/noamraph/nixsa.

## Watching for changes to get type info and test results

Seemingly OCaml needs dune's build artifacts to provide accurate type info.

A way to do so: `dune build @all @runtest --watch`.

https://dune.readthedocs.io/en/stable/index.html

# The OCaml manual

https://ocaml.org/manual/latest/index.html
