#!/bin/sh

mount /dev/"$1"3 /mnt
mkdir /mnt/boot
mkdir /mnt/home
mount /dev/"$1"1 /mnt/boot
mount /dev/"$1"4 /mnt/home
