# ============================================================
# Home Manager Configuration
# User:    smks
# Machine: Samsung Galaxy Book 2
# ============================================================
{
  config,
  pkgs,
  inputs,
  system,
  ...
}:
{
  home.username = "smks";
  home.homeDirectory = "/home/smks";
  home.stateVersion = "25.05";
  home.enableNixpkgsReleaseCheck = false;

  programs.home-manager.enable = true;

  imports = [
    ./gtk.nix
    ./hyprland.nix
    ./spicetify.nix
    inputs.spicetify-nix.homeManagerModules.default
    ./packages
  ];
}
