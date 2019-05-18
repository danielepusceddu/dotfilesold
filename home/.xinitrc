#!/bin/bash

redshift&
compton&
$HOME/.config/scripts/pwal -i $(xdg-user-dir PICTURES)/Wallpapers/&
sxhkd&

exec i3
