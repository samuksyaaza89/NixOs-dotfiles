{ pkgs, ... }:
{
  home.packages = with pkgs; [
    pciutils
    hwinfo
    usbutils
    vulkan-tools
    upower
    wireplumber
    impala
    walker
    vinegar
    hmcl
    gemini-cli-bin
  ];
}
