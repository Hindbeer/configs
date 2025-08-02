{ pkgs, ... }:

{
    home.packages = with pkgs; [
       # ... other packages
        papirus-icon-theme # Or your desired icon theme package
        adwaita-qt
    ];

    gtk = {
        enable = true;
        
        theme = {
            name = "Adwaita-dark";
        };

        iconTheme = {
            name = "Papirus"; # Or the name of your icon theme
         # package = pkgs.breeze-icons; # Example of using a different package.  Remove if not needed
         # name = "Breeze-Dark"; # Example name for a different icon theme package
        };
    };
}
