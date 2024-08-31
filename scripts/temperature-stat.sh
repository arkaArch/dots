#! /bin/bash

gpuTemp=$(sensors | awk '/GPU/ {print $2}' | sed -e 's/+//' | head -1)
cpuTemp=$(sensors | awk '/CPU/ {print $2}' | sed -e 's/+//')
ssdTemp=$(sensors | awk '/Composite/ {print $2}' | sed -e 's/+//')

temp=$(printf "🍄 GPU: $gpuTemp\n🌻 CPU: $cpuTemp\n🍀 SSD: $ssdTemp")

dunstify -u low -r 9997 "$temp" -t 5000
