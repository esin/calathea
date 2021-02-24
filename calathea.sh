#!/bin/bash

#  echo -1 > /sys/module/usbcore/parameters/autosuspend


dt=`date +%s`

ffmpeg -f video4linux2 -i /dev/video2 -vframes 2 img/$dt%3d.jpg

exit 0
