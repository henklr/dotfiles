#!/bin/bash

VOL=$(pamixer --get-volume)
MUTED=$(pamixer --get-mute)

# Strikethrough function
strikethrough() {
    local input="$1"
    local output=""
    for (( i=0; i<${#input}; i++ )); do
        output+="${input:$i:1}"$'\u0336'
    done
    echo "$output"
}

if [ "$MUTED" = "true" ]; then
    echo " $(strikethrough "${VOL}%")"
else
    if [ "$VOL" -ge 1 ]; then
        ICON=""
    else
        ICON=""
    fi
    
    echo "$ICON $VOL%"
fi

