{ config, lib, pkgs, ... }:

let
  customSlstatus = pkgs.slstatus.overrideAttrs {
    src = ./slstatus;
  };
in

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  # Define your hostname
  networking.hostName = "nixos";
  
  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Minsk";

  # Select internationalisation properties.
  i18n.defaultLocale = "ru_RU.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us, ru";
    variant = "";
    options = "grp:win_space_toggle";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kuve = {
    isNormalUser = true;
    description = "kuve";
    extraGroups = [ "networkmanager" "wheel" "jackaudio" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Nvidia driver
  hardware.graphics = {
    enable = true;
  };
  
  services.xserver.videoDrivers = ["nvidia"];
  
  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };

  # Firefox
  programs.firefox.enable = true;

  # Steam
  programs.steam.enable = true;

  # DWM
  services.xserver = {
    enable = true;
    windowManager.dwm.enable = true;
    windowManager.dwm.package = pkgs.dwm.overrideAttrs {
      src = ./mydwm/dwm;      
    };
  };

  # Pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    #  alsa.support32bit = true;
    pulse.enable = true;
  };

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
    telegram-desktop # telegram app
    git # git
    flameshot # screenshots programm
    rofi # menu apps
    fastfetch # fetch app
    feh # wallpaper
    customSlstatus # custom slstatus
    pulseaudio # pulse auidio
    alsa-utils # alsa utils
    python313 # python
    discord-ptb # discord
    home-manager
    xorg.xinit 
    xorg.xorgserver
  ];

  # Fonts
  fonts.packages = with pkgs; [
    font-awesome 
  ];

  system.stateVersion = "24.11";
}
