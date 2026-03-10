{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.iosevka
    nerd-fonts.terminess-ttf
    fira-code
    noto-fonts
    noto-fonts-cjk-sans
    bibata-cursors
  ];
}
