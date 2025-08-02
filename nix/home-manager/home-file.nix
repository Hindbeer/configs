 { config, pkgs, ... }:

{
 
    home.file.".xprofile".text = ''
        #!/bin/sh
        feh --bg-fill ~/backgrounds/bg3.png &
        slstatus &
        exec dwm
    '';
}
