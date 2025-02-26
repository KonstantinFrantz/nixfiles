{pkgs, ...}: {
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 3;
      };
      efi.canTouchEfiVariables = true;
    };
    kernelPackages = pkgs.linuxPackages_6_12;
  };

  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
    settings = {
      auto-optimise-store = true;
    };
  };

  hardware.enableAllFirmware = true;
  hardware.enableRedistributableFirmware = true;

  hardware.cpu.intel.updateMicrocode = true;

  boot.kernelParams = [
    "acpi_osi=Linux"
    "mem_sleep_default=deep"
  ];

  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
    ];
  };

  hardware.i2c.enable = true;

  hardware.ipu6 = {
    enable = true;
    platform = "ipu6epmtl";
  };

  boot.kernelModules = ["i2c-dev" "i2c-piix4"];
  boot.blacklistedKernelModules = ["kvm-intel"];
}
