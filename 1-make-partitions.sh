#!/bin/sh

parted --script /dev/"$1" \
  mklabel gpt \
  mkpart primary ext4 1MiB 300Mib \
  set 1 boot on \
  mkpart primary linux-swap 300Mib 12GB \
  mkpart primary ext4 12GB 100GB \
  mkpart primary ext4 100GB 100%
