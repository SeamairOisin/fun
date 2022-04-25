#!/bin/bash
ext=".jpg"
name="image"
for position in {98..158}
do
    curl -o "${name}${position}${ext}" "https://starzone.ragalahari.com/feb2016/photosessions/diksha-panth-half-saree-ragalahari/diksha-panth-half-saree-ragalahari${position}${ext}"
    xdg-open "${name}${position}${ext}"
    termux-toast -g top -b '#00CAB1' -c black -s $position
    sleep 13
    rm "${name}${position}${ext}"
done
