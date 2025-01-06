{
  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "Selva Logesh R";
    userEmail = "selvalogesh95@gmail.com";
    hooks = {
      post-commit = ./git_hooks/post-commit-script.sh;
    };
    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      credential.helper = "manager";
      credential.credentialStore = "secretservice";
    };
  };
}
