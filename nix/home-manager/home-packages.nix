{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    nemo # GUI filemanager
    kitty # terminal
    alacritty # terminal
    vscode # code editor
    wofi # menu apps
    waybar # Topbar
    hyprpaper # wallpapers
    swaybg # wallpapers
    pcmanfm-qt
    obs-studio
    vlc
    loupe
    libnotify

    grim
    slurp
    
    wl-clipboard

    mako # notification
    vala
 ];
}
