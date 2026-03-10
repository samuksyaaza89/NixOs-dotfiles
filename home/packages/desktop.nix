{ pkgs, ... }:
{
  home.packages = with pkgs; [
    firefox
    obsidian
    discord
    keepassxc
    github-desktop
    blender
    kicad
    arduino-ide
    anki-bin
    abiword
    libreoffice
    gnome-pomodoro
    nemo
    nemo-fileroller
    nautilus
    font-manager
    mupen64plus
  ];
}
