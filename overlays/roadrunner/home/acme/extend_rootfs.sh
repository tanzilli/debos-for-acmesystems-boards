#!/bin/sh

growpart /dev/mmcblk0 2
/sbin/resize2fs /dev/mmcblk0p2
