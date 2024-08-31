#! /bin/bash

rootPartition=$(df -h | awk '/arch-root/ {print $3}')
homePartition=$(df -h | awk '/arch-home/ {print $3}')
snapshotPerct=$(sudo lvs | awk '/root-snap/ {print $6}')

diskSpace=$(printf "💾 Root Snapshot: $snapshotPerct\n🔐 Root Parition: $rootPartition\n🔏 Home Partition: $homePartition")


dunstify -u low -r 9996 "$diskSpace" -t 5000
