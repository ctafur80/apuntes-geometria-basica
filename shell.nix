

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

            pandoc

            bash-completion
            gawk
            gnugrep
            starship
        ];


        shellHook = ''
            echo ${message}
            eval "$(starship init bash)"
            alias ls="ls --color"
        '';
    }




