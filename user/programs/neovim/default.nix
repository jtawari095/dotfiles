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
    nil
    alejandra
    basedpyright
  ];

  xdg.configFile."nvim" = {
    source = ./config;
    recursive = true;
  };
}
