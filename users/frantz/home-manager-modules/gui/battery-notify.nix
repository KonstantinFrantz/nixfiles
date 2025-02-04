{
  systemd.user.services.battery-monitor = {
    description = "Battery monitor";
    Service = {
      ExecStart = ''
        while true; do
          battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
          if [ $battery_level -le 70 ]; then
            notify-send "Низкий заряд батареи" "$battery_level%"
          fi
          sleep 60
        done
      '';
    };
    wantedBy = ["default.target"];
  };
}
