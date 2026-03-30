{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    clamav
  ];

  services.clamav = {
    daemon.enable = false;
    updater.enable = false;
    scanner.enable = false;
    fangfrisch.enable = false;
  };
}
