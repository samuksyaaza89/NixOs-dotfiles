{ pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelModules = [ "kvm-intel" ];
  boot.kernelParams = [
    "quiet"
    "loglevel=3"
  ];
  boot.initrd.systemd.enable = true;
  boot.initrd.verbose = false;
  boot.plymouth.enable = false;
}
