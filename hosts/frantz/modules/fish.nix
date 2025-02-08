{
  programs.command-not-found.enable = false;
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
      vu = "vpn up";
      vd = "vpn down";
    };
    shellInit = ''
      set fish_greeting
      fish_vi_key_bindings

      function postexec --on-event fish_postexec
        echo
      end

      function fish_mode_prompt
        switch $fish_bind_mode
          case default
            echo '🪄 '
          case insert
            echo '💬 '
          case visual
            echo '👀 '
          case replace
            echo '🔄 '
          case replace_one
            echo '🔄 '
        end
      end

      bind -M insert \cf accept-autosuggestion
      bind \cq 'prevd; commandline -f repaint'
      bind \ce 'nextd; commandline -f repaint'
      bind -M insert \cq 'prevd; commandline -f repaint'
      bind -M insert \ce 'nextd; commandline -f repaint'
    '';
  };
}
