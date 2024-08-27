#! /bin/bash

rootPartition=$(df -h | awk '/arch-root/ {print $3}')
homePartition=$(df -h | awk '/arch-home/ {print $3}')
snapshotPerct=$(sudo lvs | awk '/root-snap/ {print $6}')

echo 💾 $snapshotPerct 🔐 $rootPartition 🔏 $homePartition
