# NixOs-dotfiles

My personal NixOS configuration for the Samsung Galaxy Book 2.
Subject to change.

## Structure
```
/etc/nixos/
├── flake.nix
├── configuration.nix
├── hardware-configuration.nix
├── modules/
│   ├── home-manager.nix
│   ├── users/smks.nix
│   ├── system/
│   │   ├── nix.nix
│   │   ├── programs.nix
│   │   ├── zsh.nix
│   │   ├── boot.nix
│   │   ├── networking.nix
│   │   ├── locale.nix
│   │   ├── audio.nix
│   │   ├── bluetooth.nix
│   │   ├── security.nix
│   │   └── power.nix
│   ├── desktop/
│   │   ├── hyprland.nix
│   │   └── themes.nix
│   └── services/
│       ├── flatpak.nix
│       └── hardware.nix
├── home/
│   ├── default.nix
│   ├── gtk.nix
│   ├── hyprland.nix
│   ├── spicetify.nix
│   └── packages/
│       ├── dev.nix
│       ├── desktop.nix
│       ├── wayland.nix
│       ├── fonts.nix
│       ├── tui.nix
│       ├── utils.nix
│       └── dunst/
└── hypr/
    ├── hyprland.conf
    ├── hyprlock.conf
    ├── hypridle.conf
    └── scripts/
```

## Apply
```bash
sudo nixos-rebuild switch --flake .#nixos
```
