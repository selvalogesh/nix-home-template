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
  home.shellAliases = {
    nix-switch = "~/nix-home-template/switch.sh";
    nix-commit = "~/nix-home-template/commit-local.sh";
  };
  imports = [
    ./apps/zsh.nix
    ./apps/bash.nix
    ./apps/git.nix
    ./apps/direnv.nix
    # ./apps/neovim.nix
  ];
  programs.home-manager.enable = true;
  fonts.fontconfig.enable = true;
}

