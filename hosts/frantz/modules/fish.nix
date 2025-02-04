{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      t = "tmux";
      ta = "tmux a";
      n = "nvim .";
      ga = "git add";
      gc = "git commit -m";
      gca = "git commit --amend";
      gp = "git push";
      gs = "git status";
      gd = "git diff";
      gds = "git diff --staged";
      gdss = "git diff --staged --stat";
      gsc = "git switch -c";
      gsm = "git switch master";
    };
    shellInit = ''
      set fish_greeting
      fish_vi_key_bindings
      bind -M insert \cf accept-autosuggestion
      bind \cq 'prevd; commandline -f repaint'
      bind \ce 'nextd; commandline -f repaint'
      bind -M insert \cq 'prevd; commandline -f repaint'
      bind -M insert \ce 'nextd; commandline -f repaint'
    '';
  };
}
