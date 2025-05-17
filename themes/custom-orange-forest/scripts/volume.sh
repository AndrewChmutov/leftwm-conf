#!/usr/bin/env bash

if [[ $(pamixer --get-mute) == "false" ]]; then
    echo "  $(pamixer --get-volume)%"
else
    echo "  muted"
fi
