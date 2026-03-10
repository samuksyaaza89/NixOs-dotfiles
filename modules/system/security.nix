{ ... }:
{
  security.allowUserNamespaces = true;
  security.polkit.enable = true;
  security.pam.services.gtklock = { };
}
