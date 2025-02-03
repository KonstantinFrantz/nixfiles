{
  security.sudo.extraRules = [
    {
      users = ["frantz"];
      commands = [
        {
          command = "/run/current-system/sw/bin/awg-quick";
          options = ["NOPASSWD"];
        }
      ];
    }
  ];
}
