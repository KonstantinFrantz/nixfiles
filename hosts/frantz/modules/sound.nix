{pkgs, ...}: {
  security.rtkit.enable = true;
  hardware.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    audio.enable = true;
    pulse.enable = true;

    alsa = {
      enable = true;
      support32Bit = true;
    };
  };

  systemd.user.services.unmute-on-boot = {
    description = "Unmute audio on boot";
    wantedBy = ["default.target"];
    after = ["pipewire.service"];
    script = ''
      ${pkgs.alsa-utils}/bin/amixer -c 0 sset Master unmute
    '';
    serviceConfig.Type = "oneshot";
  };
}
