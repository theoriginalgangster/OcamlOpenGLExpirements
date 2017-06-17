ocamlc -c amodule.mli
ocamlopt -c submodule.ml
ocamlopt -c amodule.ml
ocamlopt -c bmodule.ml
ocamlopt -o hello amodule.cmx bmodule.cmx
