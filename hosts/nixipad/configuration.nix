{config, ...}: {
  imports = [
    # Mostly system related configuration
    #../../nixos/nvidia.nix # CHANGEME: Remove this line if you don't have an Nvidia GPU
    ../../nixos/audio.nix
    ../../nixos/bluetooth.nix
    ../../nixos/fonts.nix
    ../../nixos/home-manager.nix
    ../../nixos/nix.nix
    ../../nixos/systemd-boot.nix
    ../../nixos/sddm.nix
    ../../nixos/users.nix
    ../../nixos/utils.nix
    ../../nixos/hyprland.nix
    ../../nixos/docker.nix
    ../../nixos/clamav.nix

    #../../nixos/omen.nix # CHANGEME: For my laptop only, remove this (OMEN 16)

    # You should let those lines as is
    ./hardware-configuration.nix
    ./variables.nix
  ];

  nix.settings.trusted-public-keys = [
    "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    "nix-community.cachix.org-1:mB9FSh9qf2QlZceNZSfVyVb+26QH0xlrqaBu9ZS1Oi8="
  ];

  home-manager.users."${config.var.username}" = import ./home.nix;

  # Don't touch this
  system.stateVersion = "24.05";
}
