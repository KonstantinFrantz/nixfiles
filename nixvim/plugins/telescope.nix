{
  programs.nixvim.plugins = {
    web-devicons.enable = true;
    telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = "find_files";
        "<C-p>" = "git_files";
        "<leader>fg" = "live_grep";
        "<leader>fr" = "lsp_references";
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
        layout_config = {
          horizontal = {
            width = 0.95;
            preview_cutoff = 0;
            preview_width = 0.6;
          };
        };
      };
    };
  };
}
