{ config, lib, pkgs, ... }:
let
  cfg = config.alexModules;
in
{
  options.alexModules.programs.firefox = {
    enable = lib.mkEnableOption "Firefox browser";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.firefox;
      description = "The Firefox browser package";
    };
  };

  config = lib.mkIf cfg.programs.firefox.enable {
    home.packages = [
      cfg.programs.firefox.package
    ];

    alexModules.programs.firefox.profiles = {
      default = {
        name = "Alex";
        # extensions = with pkgs.firefox-addons; [
        #   ublock-origin
        #   privacy-badger
        # ];
      };
    };
  };
}
