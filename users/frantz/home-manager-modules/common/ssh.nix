{abs, ...}: {
  home.file.".ssh/git.pub".source = abs "ssh/frantz-git.pub";
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "*" = {
        identityFile = "~/.ssh/git";
      };
    };
  };
}
