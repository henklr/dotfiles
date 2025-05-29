bindsym XF86AudioRaiseVolume exec pamixer -i 10 && pkill -RTMIN+1 i3blocks
bindsym XF86AudioLowerVolume exec pamixer -d 10 && pkill -RTMIN+1 i3blocks
bindsym XF86AudioMute exec pamixer -t && pkill -RTMIN+1 i3blocks
