{ pkgs, ... }:
{
  environment.variables = {
    GTK_THEME = "Adwaita:dark";
    GTK_APPLICATION_PREFER_DARK_THEME = "1";
    GSETTINGS_SCHEMA_DIR = "${pkgs.gsettings-desktop-schemas}/share/glib-2.0/schemas";
  };

  services.gnome.glib-networking.enable = true;
  services.dbus.enable = true;

  environment.systemPackages = with pkgs; [
    dconf
    glib
    gsettings-desktop-schemas
    adwaita-icon-theme
    gnome-themes-extra
    whitesur-gtk-theme
    sassc
    libxml2
    adw-gtk3
    nixd
    nixfmt
    starship
  ];
}
