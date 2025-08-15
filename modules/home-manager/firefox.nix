{ config, lib, pkgs, ... }:
let
  cfg = config.alexModules;
in
{
  options.alexModules.programs.firefox = {
    enable = lib.mkEnableOption "Firefox browser";
    package = lib.mkPackageOption pkgs "firefox" "The Firefox browser package";
  };

  config = lib.mkIf cfg.programs.firefox.enable {
    home.packages = [
      cfg.programs.firefox.package
    ];
  };
}
