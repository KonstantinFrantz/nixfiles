{pkgs, ...}: {
  imports = [./desktop-nixos-common.nix];
  environment.systemPackages = with pkgs; [
    tofi
    wofi
    google-chrome
    telegram-desktop
    obs-studio
    qbittorrent-qt5
    easyeffects
    zoom-us
    rnote
    imv
    mpv
    docker
    openvpn
    openvpn3
    expressvpn
    protonvpn-gui
    sshuttle
    cloak-pt
    shadowsocks-libev
    wireguard-tools
    pptp

    act
    jetbrains.idea-ultimate
    jdk
    maven
    jetbrains.goland
    jetbrains.datagrip
    jetbrains.pycharm-professional
    jetbrains.clion
    jetbrains.rider
    jetbrains.webstorm
    jetbrains.rust-rover
    jetbrains.writerside

    wl-clipboard

    grim
    slurp
    swww

    pipewire
    pavucontrol
  ];
  hardware.opentabletdriver.enable = true;
  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-emoji
    (nerdfonts.override {fonts = ["NerdFontsSymbolsOnly"];})
  ];
}
