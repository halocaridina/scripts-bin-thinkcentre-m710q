#!/usr/bin/env bash

/usr/bin/sleep 0.5

/usr/bin/xcalib -d :0 /home/srsantos/.color/icc/dell_s2419h_user.icm

/usr/bin/systemd-cat -t "xcalib_screen" /usr/bin/echo "***** LAPTOP MONITOR COLOR CALIBRATED ON $(date) *****"
