#! /bin/bash

gpuTemp=$(sensors | awk '/GPU/ {print $2}' | sed -e 's/+//' | head -1)
cpuTemp=$(sensors | awk '/CPU/ {print $4}' | sed -e 's/+//')
ssdTemp=$(sensors | awk '/Composite/ {print $2}' | sed -e 's/+//')

echo 🍄 $gpuTemp 🌻 $cpuTemp 🍀 $ssdTemp
