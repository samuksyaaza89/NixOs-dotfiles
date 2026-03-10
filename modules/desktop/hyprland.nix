{ pkgs, ... }:
{
  programs.hyprland.enable = true;
  programs.xwayland.enable = true;

  services.displayManager.gdm.enable = false;
  services.greetd = {
    enable = true;
    settings = {
      initial_session = {
        command = "dbus-run-session start-hyprland";
        user = "smks";
      };
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd 'dbus-run-session start-hyprland'";
        user = "greeter";
      };
    };
  };
}
