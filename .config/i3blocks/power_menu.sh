#!/bin/bash

# Show a menu with options
#choice=$(echo -e "Sleep\nHibernate\nShutdown\nCancel" | dmenu -i -p "Power options:")
choice=$(echo -e "Sleep\nHibernate\nShutdown\nCancel" | rofi -dmenu -i -p "Power options")


case "$choice" in
    Sleep)
        systemctl suspend
        ;;
    Hibernate)
        systemctl hibernate
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    Cancel|*)
        # Do nothing
        ;;
esac


#systemctl suspend
