{pkgs, ...}: {
  imports = [./nixos-common.nix];
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages = with pkgs; [
    home-manager

    direnv
    nix-direnv

    tree
    scc
    tldr
    lazygit
    neofetch
    fastfetch
    pulseaudioFull
    alsa-utils

    btop
    htop

    zip
    unzip

    ffmpeg
    killall
    ripgrep
    nixos-generators
    brightnessctl

    ntfs3g

    libnotify
    papirus-icon-theme

    nodejs_22

    docker-init

    claude-code

    dex2jar
    maven
    jdk
  ];
}
