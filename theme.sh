#!/bin/bash
#
# dwm-theme-switcher
#
# (c) 2017 Daniel Jankowski


THEME_PATH="$HOME/.themes"

DMENU_CONFIG="$HOME/.dotfiles/shortcuts/dmenu.sh"
DUNST_CONFIG="$HOME/.config/dunst/dunstrc"
DWM_PATH="/opt/dwm-custom-patches"
DWM_CONFIG="/opt/dwm-custom-patches/config.h"
VIM_CONFIG="$HOME/.vimrc"


is_theme=0
for dir in `ls $THEME_PATH`; do
    # check if theme exists
    if [[ "$1" = "$dir" ]]; then
        # set theme found
        is_theme=1

        # copy dwm config
        cp $THEME_PATH/$dir/dwm $DWM_CONFIG 

        # build dwm
        cd $DWM_PATH
        make > /dev/null 2>&1 

        # reload dwm
        xdotool key Super+q

        # st
        cp $THEME_PATH/$dir/Xresource ~/.Xresources
        xrdb -merge ~/.Xresources

        # let st reload the config
        for process in `pgrep -x st`; do
            kill -10 $process
        done

        # dunst
        cp $THEME_PATH/$dir/dunstrc $DUNST_CONFIG
        systemctl --user restart dunst

        # vim
        cp $THEME_PATH/$dir/vimrc $VIM_CONFIG

        # let neovim reload the config
        $THEME_PATH/neovim-reload.py

        # set wallpaper
        feh --bg-scale $THEME_PATH/$dir/wallpaper.png

        # change dmenu
        cp $THEME_PATH/$dir/dmenu $DMENU_CONFIG

        notify-send "Theme" "$dir activated"
    fi
done

if [[ $is_theme = 0 ]]; then
    echo "Theme not found"
fi
