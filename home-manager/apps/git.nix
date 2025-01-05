{
  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "Selva Logesh R";
    userEmail = "selvalogesh95@gmail.com";
    hooks = {
      post-commit = ./post-commit-script;
    };
    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
    };
  };
}