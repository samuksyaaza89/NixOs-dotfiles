{ ... }:
{
  powerManagement.cpuFreqGovernor = "powersave";
  services.thermald.enable = true;
  services.tlp.enable = false;
  services.upower.enable = true;

  swapDevices = [
    {
      device = "/swapfile";
      size = 8 * 1024;
    }
  ];
  zramSwap.enable = true;
}
