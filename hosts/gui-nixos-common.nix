{pkgs, ...}: {
  imports = [./desktop-nixos-common.nix];
  environment.systemPackages = with pkgs; [
    tofi
    wofi
    google-chrome
    telegram-desktop
    obs-studio
    qbittorrent
    easyeffects
    zoom-us
    rnote
    imv
    mpv
    docker
    awscli2
    openvpn
    openvpn3
    sshuttle
    wireguard-tools
    amneziawg-go
    amneziawg-tools

    act
    jetbrains.idea-ultimate
    jetbrains.goland
    jetbrains.datagrip
    jetbrains.pycharm-professional
    jetbrains.clion
    jetbrains.rider
    jetbrains.webstorm
    jetbrains.rust-rover
    jetbrains.writerside
    android-studio

    wl-clipboard

    grim
    slurp
    swww

    cheese

    pipewire
    pavucontrol

    postman
  ];
  hardware.opentabletdriver.enable = true;
  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-emoji
    nerd-fonts.symbols-only
  ];
}
