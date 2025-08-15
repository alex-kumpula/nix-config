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

  config = lib.mkIf config.alexModules.programs.firefox.enable {
    home.packages = [
      config.alexModules.programs.firefox.package
    ];

    config.alexModules.programs.firefox.profiles = {
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
