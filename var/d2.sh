#!/bin/bash
ext=".jpg"
name="image"
for position in {9..22}
do
    curl -o "${name}${position}${ext}" "https://starzone.ragalahari.com/mar2011/starzone/deeksha-seth-high-resolution-wanted/deeksha-seth-high-resolution-wanted${position}${ext}"
    xdg-open "${name}${position}${ext}"
    termux-toast -g top -b '#000000' -c white -s $position
    sleep 15
    rm "${name}${position}${ext}"
done
