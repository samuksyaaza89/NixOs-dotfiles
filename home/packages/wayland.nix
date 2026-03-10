{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    sway
    fuzzel
    rofi
    swaybg
    swww
    hyprpaper
    brightnessctl
    pavucontrol
    wiremix
    xwayland
    xwayland-satellite
    wayland
    wayland-protocols
    wayland-scanner
    mesa
    libGL
    xfce4-power-manager
    xfce4-screensaver

    # input externo
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
