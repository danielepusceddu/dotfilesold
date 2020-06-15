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

case $2 in
    xfce )
        exec startxfce4
    ;;
    xmonad )
        exec xmonad
    ;;
    awesome )
        exec awesome
    ;;
    dwm )
        start_dwm
    ;;
    * )
        start_dwm
    ;;
esac
