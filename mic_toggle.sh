#!/usr/bin/env bash

TOGGLE="/tmp/mic_mute_toggled.pid"

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    /usr/bin/amixer -q sset Capture toggle
    notify-send 'Internal Mic' 'Enabled' -i /home/srsantos/.config/dunst/icons/microphone-sensitivity-high.svg --expire-time=6000
else
    rm -f $TOGGLE
    /usr/bin/amixer -q sset Capture toggle
    notify-send 'Internal Mic' 'Disabled' -i /home/srsantos/.config/dunst/icons/microphone-sensitivity-muted.svg --expire-time=6000
fi

