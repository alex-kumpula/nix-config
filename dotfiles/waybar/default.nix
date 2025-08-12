{ ... }:
{
  home.file.".config" = {
    source = ./.config;
    recursive = true; # link recursively
  };
}