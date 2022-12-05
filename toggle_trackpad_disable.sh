#!/bin/sh

output="$(xinput list-props "DELL0A8C:00 06CB:CE26 Touchpad" | grep "libinput Disable While Typing Enabled (" | grep 1)"

if [ -z "$output" ]
then
    xinput set-prop "DELL0A8C:00 06CB:CE26 Touchpad" "libinput Disable While Typing Enabled" 1
else
    xinput set-prop "DELL0A8C:00 06CB:CE26 Touchpad" "libinput Disable While Typing Enabled" 0
fi
