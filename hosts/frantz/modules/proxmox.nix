{
  config,
  lib,
  pkgs,
  inputs,
  currentSystem,
  ...
}: {
  imports = [
    inputs.proxmox-nixos.nixosModules.proxmox-ve
  ];

  services.proxmox-ve = {
    enable = true;
    ipAddress = "192.168.0.1"; # Измените на нужный IP-адрес
  };

  nixpkgs.overlays = [
    inputs.proxmox-nixos.overlays.${currentSystem}
  ];
}
