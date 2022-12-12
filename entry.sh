#!/bin/sh

# if no arg given, exit
(( !$# )) && echo "No partition provided, exiting " && exit 1

source ./1-make-partitions.sh "$1"
source ./2-format-partitions.sh "$1"
source ./3-swap.sh "$1"
source ./4-mount-partitions.sh "$1"
source ./5-create-fstab.sh
source ./6-dont-check-signatures.sh
source ./7-install-base.sh
# changing root will stop execution of the script - copy rest and start second part manually
cp continue.sh 9-set-locale.sh 10-set-lang.sh 11-set-hostname.sh 12-enable-network-manager.sh 13-create-boot.sh /mnt
source ./8-change-root.sh
