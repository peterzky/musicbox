{pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    (python3.withPackages (ps: with ps;
    [ dbus-python lxml yapf jedi requests requests-cache pycryptodomex future ]))
      mpg123
      libnotify
  ];
}
