{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    pcmanfm # GUI filemanager
    kitty # Terminal
    alacritty
    vscode 
    github-desktop
 ];
}
