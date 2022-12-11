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
source ./8-change-root.sh
source ./9-set-locale.sh
source ./10-set-lang.sh
source ./11-set-hostname.sh
source ./12-enable-network-manager.sh
source ./13-create-boot.sh "$1"
