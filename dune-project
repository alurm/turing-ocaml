(lang dune 3.18)

(name turing)

(generate_opam_files true)

(source
 (github alurm/turing-ocaml))

(authors "Alan Urmancheev <alan.urman@gmail.com>")

(maintainers "Alan Urmancheev <alan.urman@gmail.com>")

(license MIT)

; (documentation https://url)

(package
 (name turing)
 (synopsis "An interactive Turing machine interpreter")
 (description "A program that takes Turing machines in JSON an interprets them, visualizing execution. A project at the 42 programming school.")
 (depends ocaml base core)
 (tags
  ()))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
