#!/bin/sh
set -e
xset s off dpms 0 10 0
betterlockscreen -l blur
xset s off -dpms
