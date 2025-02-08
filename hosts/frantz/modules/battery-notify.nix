{pkgs, ...}: {
  systemd.user.services.battery-monitor = {
    description = "Battery monitor notification";
    wantedBy = ["default.target"];
    script = ''
      LAST_NOTIFIED_LEVEL=100
      LAST_BATTERY_LEVEL=100

      while true; do
          battery_level=$(cat /sys/class/power_supply/BAT0/capacity)

          if [ $battery_level -gt $LAST_BATTERY_LEVEL ]; then
            LAST_NOTIFIED_LEVEL=100
          fi

          if [ $battery_level -le 5 ] && [ $LAST_NOTIFIED_LEVEL -gt 5 ]; then
            ${pkgs.libnotify}/bin/notify-send -i /run/current-system/sw/share/icons/Papirus/symbolic/status/battery-level-10-symbolic.svg -u critical "Критически низкий заряд батареи" "$battery_level%"
            LAST_NOTIFIED_LEVEL=5
          elif [ $battery_level -le 10 ] && [ $LAST_NOTIFIED_LEVEL -gt 10 ]; then
            ${pkgs.libnotify}/bin/notify-send -i /run/current-system/sw/share/icons/Papirus/symbolic/status/battery-level-10-symbolic.svg -u normal "Низкий заряд батареи" "$battery_level%"
            LAST_NOTIFIED_LEVEL=10
          elif [ $battery_level -le 20 ] && [ $LAST_NOTIFIED_LEVEL -gt 20 ]; then
            ${pkgs.libnotify}/bin/notify-send -i /run/current-system/sw/share/icons/Papirus/symbolic/status/battery-level-10-symbolic.svg -u low "Заряд батареи" "$battery_level%"
            LAST_NOTIFIED_LEVEL=20
          fi

          LAST_BATTERY_LEVEL=$battery_level
          sleep 60
        done
    '';
  };
}
