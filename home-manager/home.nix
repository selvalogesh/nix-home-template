{ config, pkgs, ... }:

{
  home.username = "selva";
  home.homeDirectory = "/home/selva";
  home.stateVersion = "24.11";
  home.packages = with pkgs; [
    neofetch
  ];
  imports = [
    ./apps/git.nix
    ./apps/neovim.nix
  ];
  programs.home-manager.enable = true;
}

