#!/bin/bash

# Statusbar loop

start_dwm () {
    # Loop to refresh the status bar
    while true; do
        xsetroot -name "$(mpc current)  |  VOL: $(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }')  |  $(date '+%a %d-%m-%Y %H:%M:%S')"
       sleep 1s    # Update time every minute
    done &

    dunst&
    export _JAVA_AWT_WM_NONREPARENTING=1    # fix java gui applications
    exec dwm
}

[ -f ~/.Xresources ] && \
    xrdb -merge -I$HOME ~/.Xresources

[ -d $(xdg-user-dir PICTURES)/Wallpaperz/ ] && \
    xwallpaper --zoom $(find $(xdg-user-dir PICTURES)/Wallpapers/ -type f | shuf -n 1)

unclutter --timeout 5&
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
