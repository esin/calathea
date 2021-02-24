#!/bin/bash

mkdir img1 || true

for i in `ls -1 img`; do
  filename="${i%.*}";
  ts=${filename::10};
  dt=$(date --date="@$ts" "+%F %H:%M");
  convert -font helvetica -fill white -pointsize 40 -gravity East -draw "text 24,325 \"$dt\"" $i img1/$i
done
