{ config, lib, pkgs, ... }:
let
  cfg = config.alexModules.programs.firefox;
in
{
  options.alexModules.programs.firefox = {
    enable = lib.mkEnableOption "Firefox browser";
    package = lib.mkPackageOption pkgs "firefox" "The Firefox browser package";
  };

  config = lib.mkIf cfg.enable {
    home.packages = [
      cfg.package
    ];
  };
}
