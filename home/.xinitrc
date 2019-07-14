#!/bin/bash

# Statusbar loop

start_dwm () {
    # Loop to refresh the status bar
    while true; do
        xsetroot -name "$(mpc current)  |  $(date '+%a %d-%m-%Y %H:%M:%S')"
       sleep 1s    # Update time every minute
    done &

    exec dwm
}

#redshift&
compton&
unclutter --timeout 15&
$HOME/.config/scripts/pwal -i $(xdg-user-dir PICTURES)/Wallpapers/&
sxhkd&

exec awesome
#start_dwm
#exec i3
#exec xmonad
