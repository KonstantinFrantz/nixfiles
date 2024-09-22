{
  programs = {
    git = {
      enable = true;
      userName = "KonstantinFrantz";
      userEmail = "356156@edu.itmo.ru";
      extraConfig = {
        commit.gpgsign = true;
        gpg.format = "ssh";
        user.signingkey = "~/.ssh/git.pub";
        push.autoSetupRemote = "true";
      };
    };
  };
}
