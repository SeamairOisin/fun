#!/bin/bash
ext=".jpg"
name="image"
for position in {1..13}
do
    curl -o "${name}${position}${ext}" "https://starzone.ragalahari.com/dec2010/starzone/deeksha-seth-wanted-high-resolution/deeksha-seth-wanted-high-resolution${position}${ext}"
    xdg-open "${name}${position}${ext}"
    termux-toast -g top -b '#000000' -c white -s $position
    sleep 20
    rm "${name}${position}${ext}"
done
