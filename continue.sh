#!/bin/sh

# if no arg given, exit
(( !$# )) && echo "No partition provided, exiting " && exit 1

source ./9-set-locale.sh
source ./10-set-lang.sh
source ./11-set-hostname.sh
source ./12-enable-network-manager.sh
source ./13-create-boot.sh "$1"
