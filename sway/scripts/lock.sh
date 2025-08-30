#!/bin/sh

img=/tmp/lock.png

grim $img

magick $img -scale 10% -scale 1000% $img

swaylock -i "$img"
