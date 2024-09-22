{
  programs.nixvim.plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>ff" = "find_files";
      "<C-p>" = "git_files";
      "<leader>fg" = "live_grep";
    };
    settings.defaults = {
      set_env.COLORTERM = "truecolor";
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
        "%.ipynb"
      ];
    };
  };
}
