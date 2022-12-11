#!/bin/sh

parted --script /dev/"$1" \
  mklabel gpt \
  mkpart primary bios_grub 1MiB 300Mib \
  mkpart primary linux-swap 300Mib 12GB \
  mkpart primary ext4 12GB 100GB \
  mkpart primary ext4 100GB 100%
