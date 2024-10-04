{
  virtualisation = {
    docker = {
      daemon.settings = {
        registry-mirrors = [ 
          "https://dockerhub1.beget.com"
          "https://mirror.gcr.io" 
        ];
      };
      enable = false;
    };
    podman = {
      enable = true;
      dockerSocket.enable = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };
}
