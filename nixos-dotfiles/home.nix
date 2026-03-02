{ config, pkgs, lib, ... } :

{
  home.username = "beegnix";
  home.homeDirectory = "/home/beegnix";
  programs.git.enable = true;
  home.stateVersion = "25.11";
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos, btw";
      nrs = "sudo nixos-rebuild switch --flake ~/dotfiles/nixos-dotfiles#beegboi";
    };
  };
  imports = [
#    ./modules/autostart.nix
  ];
  home.packages = with pkgs; [
    ripgrep
    nil
    nixpkgs-fmt
    nodejs
    gcc
    fzf
    quickshell
  ];
}
