{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  extra_link_args = ["-Wl,-rpath=./lib"];
  buildInputs = [
    pkgs.cmake
    pkgs.python3
    pkgs.cairo
    pkgs.cairosvg
    pkgs.ffmpeg
  ];
}
