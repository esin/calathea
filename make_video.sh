#!/bin/bash

dt=$(date +%s)
ffmpeg -r 60 -pattern_type glob -i 'img1/*.jpg' -c:v libx264 out$dt.mp4

