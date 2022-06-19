#!/bin/sh

if xrandr | grep -q 'current 1920 x 1080';
then
    xrandr --output eDP --mode 1280x720
else
    xrandr --output eDP --mode 1920x1080
fi