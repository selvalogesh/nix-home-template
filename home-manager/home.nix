{ config, pkgs, ... }:

{
  home.username = "selva";
  home.homeDirectory = "/home/selva";
  home.stateVersion = "24.11";
  home.packages = with pkgs; [
    neofetch
    nixpkgs-fmt
    git-credential-manager
    nerd-fonts.jetbrains-mono
  ];
  imports = [
    ./apps/git.nix
    ./apps/direnv.nix
    # ./apps/neovim.nix
  ];
  programs.home-manager.enable = true;
  fonts.fontconfig.enable = true;
}

