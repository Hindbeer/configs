{
    wayland.windowManager.hyprland = {
        enable = true;
        systemd.enable = true;

        settings = {
            monitor = ",1920x1080@75,auto,1";

            "$terminal" = "alacritty";
            "$fileManager" = "pcmanfm";
            "$menu" = "wofi --show drun -show_icons";
            "$flameshot" = "flameshot gui";

            "$mainMod" = "SUPER";

            exec-once = [
                "waybar"
                "mako --config /home/kuve/.config/mako/config.kdl"
                "swaybg -i /home/kuve/nix/home-manager/modules/hyprland/wallpapers/bg3.png"
            ];

            env = [
                "XCURSOR_SIZE,24"
                "HYPRCURSOR_SIZE,24"
            ];

            general = {
                gaps_in = 3;
                gaps_out = 3;

                border_size = 2;

                "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
                "col.inactive_border" = "rgba(595959aa)";

                resize_on_border = false;
                allow_tearing = false;
                layout = "master";
            };

            decoration = {
                rounding = 5;

                active_opacity = 1.0;
                inactive_opacity = 1.0;

                shadow = {
                    enabled = true;
                };

                blur = {
                    enabled = true;
                };
            };

            animations = {
                enabled = true;

                bezier = [
                    "easeOutQuint,0.23,1,0.32,1"
                    "easeInOutCubic,0.65,0.05,0.36,1"
                    "linear,0,0,1,1"
                    "almostLinear,0.5,0.5,0.75,1.0"
                    "quick,0.15,0,0.1,1"
                ];

                animation = [
                    "global, 1, 10, default"
                    "border, 1, 5.39, easeOutQuint"
                    "windows, 1, 4.79, easeOutQuint"
                    "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
                    "windowsOut, 1, 1.49, linear, popin 87%"
                    "fadeIn, 1, 1.73, almostLinear"
                    "fadeOut, 1, 1.46, almostLinear"
                    "fade, 1, 3.03, quick"
                    "layers, 1, 3.81, easeOutQuint"
                    "layersIn, 1, 4, easeOutQuint, fade"
                    "layersOut, 1, 1.5, linear, fade"
                    "fadeLayersIn, 1, 1.79, almostLinear"
                    "fadeLayersOut, 1, 1.39, almostLinear"
                    "workspaces, 1, 1.94, almostLinear, fade"
                    "workspacesIn, 1, 1.21, almostLinear, fade"
                    "workspacesOut, 1, 1.94, almostLinear, fade"
                ];
            };

            dwindle = {
                pseudotile = true; 
                preserve_split = true;
            };

            master = {
                new_status = "slave";
            };

            misc = {
                force_default_wallpaper = -1; 
                disable_hyprland_logo = false;
            };

            input = {
                kb_layout = "us, ru";
                kb_options = "grp:win_space_toggle";

                follow_mouse = 1;

                sensitivity = 0;
            };

            gestures = {
                workspace_swipe = false;
            };
            
            device = {
                name = "epic-mouse-v1";
                sensitivity = -0.5;
            };

            windowrulev2 = [
                "suppressevent maximize, class:.*"
                "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
            ];
        };
    };
}
