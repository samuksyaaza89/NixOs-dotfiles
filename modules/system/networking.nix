{ ... }:
{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  networking.wireless.iwd.enable = false;
  boot.kernel.sysctl = {
    "kernel.unprivileged_userns_clone" = 1;
  };
}
