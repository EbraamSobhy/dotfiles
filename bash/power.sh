#!/bin/bash

PS3="Choose an option: "

select option in "Shutdown" "Restart"
do
  case $option in
    "Shutdown")
    sudo poweroff
      ;;
    "Restart")
    reboot
      ;;
    *)
      echo "Invalid choice"
      ;;
  esac
done
