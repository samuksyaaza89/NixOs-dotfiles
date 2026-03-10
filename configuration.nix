# ============================================================
# System Configuration
# Machine: Samsung Galaxy Book 2
# Managed by: Nix Flakes
# Author: smks
# ============================================================
{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/users/smks.nix
    ./modules/system/nix.nix
    ./modules/system/programs.nix
    ./modules/system/zsh.nix
    ./modules/system/boot.nix
    ./modules/system/networking.nix
    ./modules/system/locale.nix
    ./modules/system/audio.nix
    ./modules/system/bluetooth.nix
    ./modules/system/security.nix
    ./modules/system/power.nix
    ./modules/desktop/hyprland.nix
    ./modules/desktop/themes.nix
    ./modules/services/flatpak.nix
    ./modules/services/hardware.nix
  ];

  system.stateVersion = "25.05";
}
