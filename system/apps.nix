{
  config,
  pkgs,
  ...
}: {
  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "zap";
      upgrade = true;
      autoUpdate = true;
    };
    casks = [
      "raycast"
      "nikitabobko/tap/aerospace"
      "firefox"
      "kitty"
    ];
  };
}
