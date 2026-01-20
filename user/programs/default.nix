{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./aerospace
    ./fish
    ./git
    ./neovim
    ./kitty
    ./starship
  ];
}
