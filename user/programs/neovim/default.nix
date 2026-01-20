{
  config,
  pkgs,
  ...
}: {
  programs.neovim = {
    enable = true;
  };

  home.packages = with pkgs; [
    ripgrep
    tree-sitter
  ];

  xdg.configFile."nvim" = {
    source = ./config;
    recursive = true;
  };
}
