{
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    # loadInNixShell = true;
    nix-direnv.enable = true;
  };
}
