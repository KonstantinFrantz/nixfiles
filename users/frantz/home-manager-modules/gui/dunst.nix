{pkgs, ...}: {
  services.dunst = {
    enable = true;
    settings = {
      global = {
        browser = "/run/current-system/sw/bin/google-chrome-stable";
        dmenu = "${pkgs.wofi}/bin/rofi -d";
        follow = "mouse";
        origin = "bottom-right";
        notification_limit = 3;
        shrink = false;
        offset = "(5,5)";
        separator_height = 2;
        progress_bar = true;
        progress_bar_height = 10;
        progress_bar_frame_width = 1;
        progress_bar_min_width = 150;
        progress_bar_max_width = 300;
        indicate_hidden = true;
        transparency = 50;
        padding = 8;
        horizontal_padding = 8;
        frame_width = 3;
        frame_color = "#aaaaaa";
        separator_color = "auto";
        sort = true;
        idle_threshold = 120;
        font = "JetBrainsMono Nerd Font Mono";
        line_height = 0;
        markup = "full";
        format = "<b>%s</b>\\n%b";
        alignment = "center";
        vertical_alignment = "center";
        show_age_threshold = 60;
        word_wrap = true;
        ellipsize = "middle";
        ignore_newline = false;
        stack_duplicates = true;
        hide_duplicate_count = false;
        show_indicators = false;
        icon_position = "left";
        sticky_history = true;
        history_length = 20;
        corner_radius = 5;
        mouse_left_click = "close_current";
      };

      urgency_low = {
        background = "#2b2b2b";
        foreground = "#ffffff";
        timeout = 10;
      };

      urgency_normal = {
        background = "#2b2b2b";
        foreground = "#ffffff";
        timeout = 15;
      };

      urgency_critical = {
        background = "#900000";
        foreground = "#ffffff";
        frame_color = "#ff0000";
        timeout = 0;
      };

      telegram = {
        appname = "Telegram Desktop";
        alignment = "left";
        set_transient = true;
      };
    };
  };
}
