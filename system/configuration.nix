{pkgs, ...}: {
  imports = [
    ./apps.nix
    ./fonts.nix
    ./programs
  ];

  # Use Lix
  nix.package = pkgs.lix;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;

  # User
  users.users.marika.home = "/Users/marika";

  # Primary user
  system.primaryUser = "marika";

  # System
  system = {
    defaults = {
      dock = {
        autohide = true;
        show-recents = false;
        mru-spaces = false;
        expose-group-apps = true;
      };
      NSGlobalDomain = {
        "com.apple.sound.beep.feedback" = 0;

        # Interface
        AppleInterfaceStyle = "Dark";

        # Keyboard
        AppleKeyboardUIMode = 3;
        ApplePressAndHoldEnabled = true;
        InitialKeyRepeat = 15;
        KeyRepeat = 2;
      };
    };
  };

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}
