#!/bin/bash

function send_notification() {
    volume=$(pamixer --get-volume)
    dunstify -a "change-volume" -u low -r 9999 -h int:value:"$volume" -i sound "Volume: ${volume}%" -t 1000
}

case $1 in
up)
    pamixer -u
    pamixer -i 5 --allow-boost
    send_notification $1
    ;;
down)
    pamixer -u
    pamixer -d 5 --allow-boost
    send_notification $1
    ;;
mute)
    pamixer -t
    if $(pamixer --get-mute); then
        dunstify -i mute -a "change_volume" -t 1000 -r 9999 -u low "Muted"
    else
        send_notification up
    fi
    ;;
esac
