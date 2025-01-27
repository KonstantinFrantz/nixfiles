{abs, ...}: {
  home.file.".ssh/id_ed25519.pub".source = abs "ssh/frantz-git.pub";
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "*" = {
        identityFile = "~/.ssh/id_ed25519";
      };
    };
  };
}
