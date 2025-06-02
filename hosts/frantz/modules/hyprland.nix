{pkgs, ...}: {
  programs.hyprland.enable = true;
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    configPackages = with pkgs; [xdg-desktop-portal-gtk xdg-desktop-portal-hyprland];
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
    config.common.default = "*";
  };
}
