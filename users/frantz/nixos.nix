{
  config,
  abs,
  ...
}: {
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
    };
  };
  programs.ssh.startAgent = true;
  users.users.frantz = {
    isNormalUser = true;
    description = "frantz";
    extraGroups = [
      "networkmanager"
      "input"
      "wheel"
    ];
    openssh.authorizedKeys.keyFiles = [
      (abs "ssh/frantz-git.pub")
    ];
  };
  security.pam.services.swaylock = {};
  home-manager = let
    username = "frantz";
  in {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.${username} = {
      imports = [
        ./home-manager-modules
      ];
      home = {
        inherit username;
        homeDirectory = "/home/${username}";
        stateVersion = config.system.stateVersion;
      };
    };
  };
}
