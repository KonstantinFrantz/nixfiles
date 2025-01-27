{
  virtualisation = {
    docker = {
      daemon.settings = {
        registry-mirrors = [
          "https://dockerhub1.beget.com"
          "https://mirror.gcr.io"
        ];
      };
      enable = true;
    };
  };
}
