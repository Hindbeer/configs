{ config, pkgs, ... }:

{
  imports = [
    ./home-packages.nix
  ];

  home.username = "kuve";
  home.homeDirectory = "/home/kuve";
  home.stateVersion = "24.11"; 
  
  programs.home-manager.enable = true;
}
