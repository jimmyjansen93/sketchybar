#!/bin/bash

SPACE_ICON_COLOR_ACTIVE=0xff89b4fa
SPACE_ICON_COLOR_INACTIVE=0xfff38ba8

FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)

for sid in $(aerospace list-workspaces --all); do
    if [ "$sid" = "$FOCUSED_WORKSPACE" ]; then
        sketchybar --set space.$sid icon.color=$SPACE_ICON_COLOR_ACTIVE 
    else
        sketchybar --set space.$sid icon.color=$SPACE_ICON_COLOR_INACTIVE 
    fi
done
