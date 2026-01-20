{
  description = "Nix Darwin Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    self,
    nix-darwin,
    nixpkgs,
    home-manager,
  }: {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#mini
    darwinConfigurations."mini" = nix-darwin.lib.darwinSystem {
      modules = [
        ./system/configuration.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.marika = import ./user/home.nix;
        }
      ];
    };

    # Dev shells
    devShells.aarch64-darwin.default = nixpkgs.legacyPackages.aarch64-darwin.mkShell {
      name = "dotfiles";
      packages = with nixpkgs.legacyPackages.aarch64-darwin; [
        lua-language-server
        nil
      ];
    };
  };
}
