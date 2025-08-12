# Add your reusable home-manager modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.
{
  # List your module files here
  # my-module = import ./my-module.nix;

  git = import ./git.nix;
  zsh = import ./zsh.nix;
  steam = import ./steam.nix;
  swaybg = import ./swaybg.nix;
  waybar = import ./waybar.nix;
  fuzzel = import ./fuzzel.nix;
}
