

{ pkgs ? import <nixpkgs> {} }:

let
    project_name = "pruebas de la asignatura de programación en Python del MIT";
    message = "Entorno para ${project_name}.";
in
    pkgs.mkShell {
        # packages = with pkgs; [
        #     (python3.withPackages (python-pkgs: with python-pkgs; [
        #         flask

        #         tkinter
        #         # click
        #         # jinja2
        #         # itsdangerous
        #         # markupsafe
        #         # werkzeug
        #     ]))
        # ];


        buildInputs = with pkgs; [
            typst
            typstyle
            tinymist
            # tree-sitter-grammars.tree-sitter-typst

            git

            uutils-coreutils

            # bash-completion
            # gawk
            # gnugrep
        ];


        shellHook = ''
            export PS1=\\n\[' \u at \h (env. MIT Python Course) ...$(echo ''${PWD#/Users/ctafur/}) '\]'\n< '
            echo "" ; echo ${message}
            alias ls="ls --color"
        '';
    }
