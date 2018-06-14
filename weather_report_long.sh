#!/bin/bash

ZIP_CODE=`/usr/bin/curl -s ipinfo.io | /usr/bin/awk -F "\"" '/postal/{print $4}'`

if ! [ "`ping -c 1 google.com`" ]; then
/usr/bin/echo "Not available since we are offline." | /usr/bin/rofi -dmenu -p "The current : is:"
else
/usr/bin/wunderground.py -l ${ZIP_CODE} | /usr/bin/rofi -dmenu -p "The current : is:"
fi
exit
