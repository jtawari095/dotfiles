{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./aerospace
    ./eza
    ./fish
    ./git
    ./neovim
    ./kitty
    ./starship
  ];
}
