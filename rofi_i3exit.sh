 #!/usr/bin/env bash

res=$(rofi -dmenu -lines 6 -columns 3 -u 2-4 -font "Terminus 20" -p "" -input < ~/.i3/rofi-i3exit.opts)

if [[ $res = "LOCK SCREEN" ]]; then
    xset dpms force off
fi
if [[ $res = "LOGOUT TO LIGHTDM" ]]; then
    /usr/bin/i3-msg exit
fi
if [[ $res = "SUSPEND TO RAM" ]]; then
    systemctl suspend
fi
if [[ $res = "REBOOT" ]]; then
    systemctl reboot
fi
if [[ $res = "SHUTDOWN" ]]; then
    systemctl poweroff
fi
exit 0
