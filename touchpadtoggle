#!/bin/bash
touchpadname="$(xinput list | awk -F"[ ]+" '/Touch/{printf("%s %s\n", $3, $4)}')"
isenabled="$(xinput list-props Asus\ TouchPad | awk '/Device\ Enabled/ {print $NF}')"
if [[ isenabled -eq 1 ]]
then
	xinput disable "$touchpadname"
else
	xinput enable "$touchpadname"
fi
