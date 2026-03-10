# ============================================================
# Nix Flake Configuration
# Machine: Samsung Galaxy Book 2
# User:    smks
# Channel: nixos-unstable
# ============================================================
{
  description = "smks — Samsung Galaxy Book 2";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    spicetify-nix.url = "github:Gerg-L/spicetify-nix";

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      noctalia,
      ...
    }:
    let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
          firefox.enableWidevine = true;
        };
      };

      mkSystem =
        modules:
        nixpkgs.lib.nixosSystem {
          inherit system pkgs;
          specialArgs = { inherit inputs system; };
          modules = modules ++ [
            noctalia.nixosModules.default
            home-manager.nixosModules.home-manager
            ./modules/home-manager.nix
          ];
        };
    in
    {
      nixosConfigurations.nixos = mkSystem [ ./configuration.nix ];
    };
}
