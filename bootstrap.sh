#!/bin/bash

cd /mnt/raid-lab

sudo losetup -fP disk1.img
sudo losetup -fP disk2.img
sudo losetup -fP disk3.img

losetup -a | grep raid-lab

sudo mdadm --assemble --scan
sudo vgchange -ay

sudo mkdir -p /mnt/raid
sudo mkdir -p /mnt/logs

sudo mount /dev/md0 /mnt/raid
sudo mount /dev/vg_data/lv_logs /mnt/logs

df -h | grep -E "raid|logs"
cat /proc/mdstat
