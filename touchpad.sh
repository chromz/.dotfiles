#!/bin/bash
touchpadname="$(xinput list | awk -F"[ ]+" '/Touch/{printf("%s %s\n", $3, $4)}')"
echo $touchpadname
