let
  nixpkgs = import (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-23.11.tar.gz") { config = {}; overlays = []; };

  myPackages = with nixpkgs.pkgs; [
    cowsay
    lolcat
    awscli
    python3
    python3Packages.pip
    python3Packages.virtualenv
    nodejs_21
    kubectl
    docker
  ];

in

nixpkgs.mkShell {
  name = "main";
  buildInputs = myPackages;

  shellHook = ''
    BASH_IT_THEME='bobby'
    BASH_IT_INIT="/Users/$(whoami)/.bash_it/bash_it.sh"
    alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
    alias bii="source $BASH_IT_INIT"
    source ./bash_it.sh
    source ./script.sh
  '';
}
