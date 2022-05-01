#!/bin/sh

apply_settings () {

  sleep 2
  xinput set-prop pointer:"bcm5974" "libinput Natural Scrolling Enabled" 1
  xinput set-prop pointer:"bcm5974" "libinput Tapping Enabled" 1

}

apply_settings

while true; do state=$(lsusb) && sleep 2 && [ "$state" != "$(lsusb)" ] && apply_settings; done
