{
  config,
  pkgs,
  ...
}: {
  programs.eza = {
    enable = true;
    extraOptions = [
      "--group-directories-first"
      "--header"
    ];
  };
}
