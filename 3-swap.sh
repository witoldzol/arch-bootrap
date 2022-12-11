#!/bin/sh

mkswap /dev/"$1"2
swapon /dev/"$1"2
