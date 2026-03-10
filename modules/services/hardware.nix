{ pkgs, ... }:
{
  services.udev.packages = with pkgs; [ stlink ];
  programs.steam.enable = true;
}
