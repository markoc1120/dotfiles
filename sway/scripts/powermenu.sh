#!/bin/bash

lockwall="sh ~/.config/sway/scripts/lock.sh"
choice=$(echo -e "Lock\nLogout\nSuspend\nReboot\nShutdown" | rofi -dmenu)

case $choice in
    "Lock")
        eval $lockwall;;
    "Logout")
        swaymsg exit ;;
    "Suspend")
        systemctl suspend ;;
    "Reboot")
        systemctl reboot ;;
    "Shutdown")
        systemctl poweroff ;;
esac

