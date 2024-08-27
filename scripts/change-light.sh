#! /bin/bash

function notify() {
    light_value=$(brightnessctl get)
    light=$(((light_value*100)/15360))
    dunstify -a "change-light" -u low -r 9998 -h int:value:"$light" -i brightness "Brightness: ${light}%" -t 1000
}

case $1 in
up)
    brightnessctl set +5%
    notify $1
    ;;
down)
    brightnessctl set 5%-
    notify $1
    ;;
esac

