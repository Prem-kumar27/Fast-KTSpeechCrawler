#!/bin/bash

playlist_url=$1
youtube-dl --download-archive ./en-downloaded.txt --no-overwrites -f 'bestaudio[ext=m4a]' --restrict-filenames --youtube-skip-dash-manifest --prefer-ffmpeg --socket-timeout 20  -iwc --write-info-json -k --write-sub --sub-format ttml --sub-lang en --convert-subs vtt  $playlist_url -o "$target_dir%(id)s%(title)s.%(ext)s" --exec "python ./crawler/process.py {} '$filter_dir'" 
