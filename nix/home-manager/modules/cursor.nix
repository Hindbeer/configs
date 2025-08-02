{ pkgs, ... }: 

{
  home.pointerCursor = {
    package = pkgs.vanilla-dmz;
    # package = pkgs.graphite-cursors;
    # name = "graphite-cursors";
    name = "Vanilla-DMZ";
    size = 24;
    gtk.enable = true;

    x11 = {
      enable = true;
      defaultCursor = "Vanilla-DMZ";
      # defaultCursor = "graphite-cursors";
    };
  };
}
