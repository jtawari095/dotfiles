{
  config,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    signing = {
      format = "ssh";
      key = "${config.home.homeDirectory}/.ssh/id_ed25519.pub";
      signByDefault = true;
    };
    settings = {
      init.defaultBranch = "main";
      user = {
        name = "jtawari095";
        email = "jtawari095@gmail.com";
      };
    };
  };
}
