# Add your reusable NixOS modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.
{
  # List your module files here
  # my-module = import ./my-module.nix;

  gnome = import ./gnome.nix;
  niri = import ./niri.nix;
  alacritty = import ./alacritty.nix;
  git = import ./git.nix;
  gdm = import ./gdm.nix;
  xwayland-satellite = import ./xwayland-satellite.nix;
}
