{
  networking = {
    hostName = "frantz";
    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
      dns = "systemd-resolved";
    };
    wireless.enable = false;
  };

  services.resolved = {
    enable = true;
    dnssec = "false";
  };

  networking.wireless.iwd = {
    enable = true;
    settings = {
      IPv6 = {
        Enabled = true;
      };
      Settings = {
        AutoConnect = true;
      };
      General = {
        EnableNetworkConfiguration = true;
      };
      Network = {
        NameResolvingService = "systemd";
      };
    };
  };
}
