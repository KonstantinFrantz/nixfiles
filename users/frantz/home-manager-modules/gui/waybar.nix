{pkgs, ...}: {
  programs.waybar = {
    enable = true;
    # TODO: restore when https://github.com/Alexays/Waybar/pull/3459 is released
    package = pkgs.waybar;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 0;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "network"
          "cpu"
          "memory"
          "temperature"
          "tray"
          "backlight"
          "pulseaudio"
          "battery"
        ];
        "hyprland/workspaces" = {
          active-only = false;
          all-outputs = true;
          disable-scroll = true;
          format = "{name}";
          on-click = "activate";
          show-special = true;
          sort-by-number = true;
        };
        cpu = {
          interval = 2;
          format = " cpu: {usage}";
          tooltip = true;
        };
        temperature = {
          interval = 2;
          critical-threshold = 80;
          hwmon-path-abs = "/sys/devices/pci0000:00/0000:00:18.3/hwmon";
          input-filename = "temp1_input";
        };
        tray = {
          icon-size = 20;
          spacing = 2;
        };
        memory = {
          interval = 2;
          format = "ram: {used} ";
        };
        battery = {
          interval = 2;
          states = {
            good = 95;
            warning = 20;
            critical = 10;
          };
          format = "{icon}  {capacity}";
          format-charging = "⚡ {capacity}";
          format-plugged = "⚡ {capacity}";
          format-alt = "{time} {icon} ";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
        };
        clock = {
          interval = 1;
          format = "{:%H:%M:%S  %a %d %b}";
        };
        network = {
          interval = 2;
          format-wifi = "  {signalStrength}";
          format-ethernet = "󰈀 {essid}";
          format-linked = "{ifname} (No IP) ";
          format-disconnected = "󰖪";
          tooltip-format-wifi = "Connected to {essid} {ifname} via {gwaddr};\n{signalStrength}% | ⬇ {bandwidthDownBits} ⬆ {bandwidthUpBits} | {ipaddr}/{cidr}";
        };
        backlight = {
          device = "intel_backlight";
          format = "{icon} {percent}";
          format-icons = [
            "🌌"
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            "🪩"
          ];
          on-scroll-down = "brightnessctl set 1%+";
          on-scroll-up = "brightnessctl set 1%-";
          min-length = 5;
        };
        pulseaudio = {
          format = "{icon} {volume}  {format_source}";
          format-bluetooth = "{volume} 󰂱 {format_source}";
          format-bluetooth-muted = "󰂱 {format_source}";
          format-muted = "{format_source}";
          format-source = "{volume} ";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "󰋎";
            phone = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              ""
            ];
          };
          on-click = "pavucontrol";
        };
      };
    };
    style = ./waybar-style.css;
  };
}
