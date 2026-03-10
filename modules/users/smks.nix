{ pkgs, ... }:
{
  users.users.smks = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "smks";
    extraGroups = [
      "networkmanager"
      "wheel"
      "dialout"
    ];
  };
}
