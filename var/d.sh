#!/bin/bash
ext=".jpg"
name="image"
for position in {39..163}
do
    curl -o "${name}${position}${ext}" "https://starzone.ragalahari.com/may2017/photosessions/sanju-prasanna-in-hd-wallpapers/sanju-prasanna-in-hd-wallpapers${position}${ext}"
    xdg-open "${name}${position}${ext}"
    termux-toast -g top -b '#00CAB1' -c black -s $position
    sleep 7
    rm "${name}${position}${ext}"
done
