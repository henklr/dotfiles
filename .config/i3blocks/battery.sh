#!/bin/bash

# Get battery device
#BATTERY=$(upower -e | grep BAT)

# Get battery info
#INFO=$(upower -i "$BATTERY")

# Extract percentage and state
#PERCENT=$(echo "$INFO" | awk '/percentage/ {print $2}')
#STATE=$(echo "$INFO" | awk '/state/ {print $2}')

# Show "charging" only if it's charging
#if [ "$STATE" = "charging" ]; then
#    echo "BAT: $PERCENT ⚡"
#else
#    echo "BAT: $PERCENT"
#fi

#!/bin/bash

# Get battery device
BATTERY=$(upower -e | grep BAT)

# Get battery info
INFO=$(upower -i "$BATTERY")

# Extract percentage and state
PERCENT_RAW=$(echo "$INFO" | awk '/percentage/ {print $2}' | tr -d '%')
STATE=$(echo "$INFO" | awk '/state/ {print $2}')

# Choose icon based on percentage
if [ "$PERCENT_RAW" -ge 95 ]; then
    ICON=""  # Full
elif [ "$PERCENT_RAW" -ge 75 ]; then
    ICON=""  # 3/4
elif [ "$PERCENT_RAW" -ge 50 ]; then
    ICON=""  # Half
elif [ "$PERCENT_RAW" -ge 25 ]; then
    ICON=""  # 1/4
else
    ICON=""  # Empty
fi

# Append charging bolt if charging
if [ "$STATE" = "charging" ]; then
    echo "$ICON ⚡ $PERCENT_RAW%"
else
    echo "$ICON $PERCENT_RAW%"
fi


