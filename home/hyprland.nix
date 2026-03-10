{ pkgs, inputs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    extraConfig = builtins.readFile ../hypr/hyprland.conf;
    plugins = [
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprbars
    ];
  };

  programs.hyprlock = {
    enable = true;
  };

  home.file.".config/hypr/hyprlock.conf".source = ../hypr/hyprlock.conf;

  services.hypridle = {
    enable = true;
  };

  home.file.".config/hypr/hypridle.conf".source = ../hypr/hypridle.conf;

}
