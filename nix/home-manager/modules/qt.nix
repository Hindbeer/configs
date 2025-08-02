{ pkgs, ... }:

{
    home.packages = with pkgs; [
        papirus-icon-theme
        adwaita-qt
    ];

    qt = {
        enable = true;
        platformTheme.name = "gtk";
        style = {
            name = "Adwaita-dark";
        };
    };
}
