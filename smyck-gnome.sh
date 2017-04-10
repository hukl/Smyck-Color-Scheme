#!/bin/sh
#
# Shell script for configuring gnome-terminal to use the smyck color scheme
# Usage: ./smyck-gnome.sh

PALETTE="#000000000000:#CC7755664466:#88EEBB3333BB:#DD00BB0033CC:#7722BB33CCCC:#CC88AA00DD11:#221188669933:#BB00BB00BB00:#55DD55DD55DD:#EE0099669900:#CCDDEEEE6699:#FFFFEE337777:#99CCDD99FF00:#FFBBBB11FF99:#7777DDFFDD88:#FF77FF77FF77"
BG_COLOR="#242424242424"
FG_COLOR="#F7F7F7F7F7F7"

gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "$PALETTE"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "$BG_COLOR"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "$FG_COLOR"
