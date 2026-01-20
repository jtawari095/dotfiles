{
  config,
  pkgs,
  ...
}: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      # Disable greeting
      set fish_greeting

      # Vi keybindings
      fish_vi_key_bindings
      set fish_cursor_insert block
    '';
  };
}
