#!/bin/sh
# This script uses Handbrake CLI to convert mp4 videos from FLIP cam to APPLE TV format (recursive, un-attended conversion)

src_video_dir=~/Videos/Dec2011
cd  $src_video_dir

handbrake_cli_dir=/Applications/HandBrakeCLI

for i in ` ls VID00*`; do echo $i; $handbrake_cli_dir -i $i -o HB/$i  -e x264 -q 20.0 -a 1,1 -E faac,copy:ac3 -B 160,160 -6 dpl2,auto -R Auto,Auto -D 0.0,0.0 -f mp4 -4 -X 960 --loose-anamorphic -m -x cabac=0:ref=2:me=umh:b-pyramid=none:b-adapt=2:weightb=0:trellis=0:weightp=0:vbv-maxrate=9500:vbv-bufsize=9500; done
