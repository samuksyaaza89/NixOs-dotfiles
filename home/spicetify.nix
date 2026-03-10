{ pkgs, inputs, ... }:
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  programs.spicetify = {
    enable = true;
    theme = spicePkgs.themes.text;
    colorScheme = "custom";
    customColorScheme = {
      text = "c1c1c1"; # cor do texto
      subtext = "6b737c"; # texto secundário
      sidebar-text = "c1c1c1";
      main = "121212"; # fundo principal
      sidebar = "0e0e0e"; # fundo sidebar
      player = "121212"; # fundo player
      card = "1a1a1a"; # cards
      shadow = "000000";
      selected-row = "292929";
      button = "b392f0"; # botões (roxo)
      button-active = "b392f0";
      button-disabled = "383838";
      tab-active = "b392f0";
      notification = "b392f0";
      notification-error = "FF7A84";
      misc = "383838";
    };

    enabledExtensions = with spicePkgs.extensions; [
      adblock
      shuffle
      hidePodcasts
    ];
  };
}
