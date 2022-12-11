#!/bin/sh

grub-install --target=i386-pc /dev/"$1"
grub-mkconfig -o /boot/grub/grub.cfg
