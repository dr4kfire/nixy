# Users configuration for NixOS
{
  config,
  pkgs,
  ...
}: let
  username = config.var.username;
in {
  programs.zsh.enable = true;
  users = {
    defaultUserShell = pkgs.zsh;

    users.${username} = {
      isNormalUser = true;
      initialPassword = "password";
      description = "${username} account";
      extraGroups = ["networkmanager" "wheel"];
    };
  };
}
