{ pkgs, ... }:
{
  home.packages = with pkgs; [
    htop
    btop
    yazi
    cava
    neofetch
    ani-cli
    wezterm
    kitty
    unimatrix
    tty-clock
    cbonsai
    rain
    procps
  ];
}
