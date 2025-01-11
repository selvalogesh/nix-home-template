{ pkgs, ... }:
{
  programs.tmux.enable = true;
  programs.tmux = {
    plugins = with pkgs; [
      tmuxPlugins.sensible
      tmuxPlugins.catppuccin
    ];
  };
}
