{ pkgs, ... }:

{
    wayland.windowManager.hyprland.settings = {
        # Switching focus
        bind = [
            "$mainMod, TAB, movefocus, l"
            "$mainMod SHIFT, TAB, movefocus, r"

        # Resize windows
            "$mainMod, right, resizeactive, 10 0"
            "$mainMod, left, resizeactive, -10 0" 
            "$mainMod, up, resizeactive, 0 -10"
            "$mainMod, down, resizeactive, 0 10"

        # Kill & float window, exit hl, 
            "$mainMod SHIFT, C, killactive,"
            "$mainMod SHIFT, Q, exit,"
            "$mainMod SHIFT, V, togglefloating,"
        
        # Exec
            "$mainMod SHIFT, Return, exec, $terminal"
            "$mainMod, P, exec, $menu"
            ", Print, exec, grim -g \"$(slurp -d)\" - | wl-copy"

        # Switching workspace
            "$mainMod, 1, workspace, 1"
            "$mainMod, 2, workspace, 2"
            "$mainMod, 3, workspace, 3"
            "$mainMod, 4, workspace, 4"
            "$mainMod, 5, workspace, 5"
            "$mainMod, 6, workspace, 6"
            "$mainMod, 7, workspace, 7"
            "$mainMod, 8, workspace, 8"
            "$mainMod, 9, workspace, 9"
            "$mainMod, 0, workspace, 10"

        # Moving window to a workspace
            "$mainMod SHIFT, 1, movetoworkspace, 1"
            "$mainMod SHIFT, 2, movetoworkspace, 2"
            "$mainMod SHIFT, 3, movetoworkspace, 3"
            "$mainMod SHIFT, 4, movetoworkspace, 4"
            "$mainMod SHIFT, 5, movetoworkspace, 5"
            "$mainMod SHIFT, 6, movetoworkspace, 6"
            "$mainMod SHIFT, 7, movetoworkspace, 7"
            "$mainMod SHIFT, 8, movetoworkspace, 8"
            "$mainMod SHIFT, 9, movetoworkspace, 9"
            "$mainMod SHIFT, 0, movetoworkspace, 10"
        ];

        bindm = [
        # Resize window with mouse
            "$mainMod, mouse:272, movewindow"
            "$mainMod, mouse:273, resizewindow"
        ];

        bindel = [
        # Multimedia keys for volume and LCD brightness
            ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
            ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
            ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
            ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
            ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
            ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
        ];

        bindl = [
        # Requires playerctl
            ", XF86AudioNext, exec, playerctl next"
            ", XF86AudioPause, exec, playerctl play-pause"
            ", XF86AudioPlay, exec, playerctl play-pause"
            ", XF86AudioPrev, exec, playerctl previous"

        ];
    };
}
