#!/bin/sh

sed -i 's/SigLevel.*Required.*/SigLevel Never/' /etc/pacman.conf
