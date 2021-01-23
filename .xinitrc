#!/bin/sh
export PATH="$HOME/.local/bin/evil_soft:$PATH:$(du "$HOME/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):/root/.cargo/bin"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export PASSWORD_STORE_DIR=$HOME/.local/share/pass
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/notmuchrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export WALL="$HOME/.config/wall.jpg"
export NNN_PLUG='f:preview-tabbed'

export EDITOR="nvim"
export TERMCMD="st"
export TERMINAL="st"
export BROWSER="qutebrowser"
export READER="zathura"
export FILE="vifm"

picom &
xbanish &
run_once redshift &
run_once udiskie &
echoweather &
echoupdates &
syncthing -no-browser &
transmission-daemon &
remaps &
autolock &
dunst &
xobvolume | xob &
feh --bg-fill $WALL
acpi_watch &
exec dwm
