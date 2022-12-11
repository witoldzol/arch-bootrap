#!/bin/sh

mkfs.ext4 /dev/"$1"1
mkfs.ext4 /dev/"$1"3
mkfs.ext4 /dev/"$1"4
