{ config, lib, pkgs, ... }:
{
    options = {
        options.alexModules.programs.firefox = {
            enable = lib.mkEnableOption "Firefox browser";
            package = lib.mkPackageOption pkgs "firefox" "The Firefox browser package";
        };
    };

    config = lib.mkIf config.alexModules.programs.firefox.enable {
        home.packages = with pkgs; [
            config.programs.firefox.package
        ];
    };
}