{pkgs, ...}: {
  security.sudo.extraRules = [
    {
      users = ["frantz"];
      commands = [
        {
          command = "${pkgs.wireguard-tools}/bin/wg-quick";
          options = ["NOPASSWD"];
        }
      ];
    }
  ];
}
