#!/bin/bash

TOUCHPAD="AlpsPS/2 ALPS DualPoint TouchPad"
SETTING="Device Enabled"

enable() {
    xinput --set-prop "${TOUCHPAD}" "${SETTING}" 1
    echo "Touchpad enabled"
}


disable() {
    xinput --set-prop "${TOUCHPAD}" "${SETTING}" 0
    echo "Touchpad disabled"
}

ISENABLED=$(xinput list-props "${TOUCHPAD}" | grep "${SETTING}" | grep -o ".$")
if [ $ISENABLED == "1" ] ; then
    disable ;
else
    enable ;
fi