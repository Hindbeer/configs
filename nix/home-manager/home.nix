{ config, pkgs, ... }:

{
  imports = [
    ./modules/bundle.nix
    ./home-packages.nix
    # ./home-fonts.nix
  ];

  home.username = "kuve";
  home.homeDirectory = "/home/kuve";
  home.stateVersion = "24.11"; 
  
  programs.home-manager.enable = true;
}
