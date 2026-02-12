(lang dune 3.20)

(name homepage)

(version dev)

(generate_opam_files)

(source
 (github divarvel/physical-homepage))

(license MIT)

(authors "clement delafargue <clement@delafargue.name>")

(maintainers "clement delafargue <clement@delafargue.name>")

(package
 (name homepage)
 (synopsis "Clément Delafargue homepage")
 (description "Mostly info about talks and profesh stuff")
 (depends
  (ocaml
   (>= 5.3.0))
  (yocaml
   (>= 2.8.0))
  (yocaml_unix
   (>= 2.8.0))
  (yocaml_yaml
   (>= 2.8.0))
  (yocaml_markdown
   (>= 2.8.0))
  (yocaml_jingoo
   (>= 2.8.0))
  ;; dev setup
  (utop :with-dev-setup)
  (ocamlformat :with-dev-setup)
  (ocp-indent :with-dev-setup)
  (merlin :with-dev-setup)
  (ocaml-lsp-server :with-dev-setup)))
