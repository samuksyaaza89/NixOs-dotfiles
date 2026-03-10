{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ./dev.nix
    ./desktop.nix
    ./wayland.nix
    ./fonts.nix
    ./tui.nix
    ./utils.nix
    ./dunst
  ];
}
