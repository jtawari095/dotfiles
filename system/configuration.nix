{pkgs, ...}: {
  imports = [
    ./apps.nix
    ./fonts.nix
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

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}
