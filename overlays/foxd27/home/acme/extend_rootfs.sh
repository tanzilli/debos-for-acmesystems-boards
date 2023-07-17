#!/bin/sh

sudo growpart /dev/mmcblk0 2
sudo resize2fs /dev/mmcblk0p2
