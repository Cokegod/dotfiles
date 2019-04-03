#!/bin/bash

export CHECKUPDATES_DB="/tmp/checkup-db-$MONITOR"
updates_arch=$(checkupdates | wc -l)
updates_aur=$(pikaur -Qua 2> /dev/null | wc -l)
updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates" -gt 0 ]; then
    echo "$updates_arch %{F#5b5b5b}%{F-} $updates_aur"
fi
