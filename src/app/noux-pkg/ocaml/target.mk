CONFIGURE_ARGS = --bindir /bin --libdir /lib/ocaml \
                 --target x86_64-genode-linux \
                 --target-bindir /bin \
                 -no-curses \
                 -no-pthread \
                 -no-debugger \
                 -no-ocamldoc \
                 -no-ocamlbuild \
                 -no-native-compiler \
                 -with-debug-runtime \
                 -with-instrumented-runtime \
                 -verbose

include $(call select_from_repositories,mk/noux.mk)

# OCaml configure doesn't like --option=val args.
CONFIGURE_ARGS := $(subst =, , $(CONFIGURE_ARGS))
