#!/bin/sh

run () {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run picom
run nitrogen --restore
run volumeicon
# run lxsession
run xfce4-volumed-pulse
run /usr/lib/gsd-datetime
# run /usr/lib/baloo_file
run xfce4-clipman
# run emojione-picker
run /usr/lib/geoclue-2.0/demos/agent
run /usr/lib/kdeconnectd
run kdeconnect-indicator
run nm-applet
run system-config-printer-applet
run start-pulseaudio-x11
run /bin/snap userd --autostart
run /usr/lib/tracker-miner-fs-3
run /usr/lib/tracker-miner-rss-3
# run /usr/lib/xapps/sn-watcher/xapp-sn-watcher
run /usr/lib/at-spi-bus-launcher --launch-immediately
run /usr/bin/gnome-keyring-daemon --start --components=pkcs11
run /usr/lib/gsd-power
run /usr/bin/gnome-keyring-daemon --start --components=secrets
run /usr/bin/gnome-keyring-daemon --start --components=ssh
run ~/.config/awesome/xinput-daemon.sh
run blueman-applet
run indicator-keylock
run xfce4-power-manager
run /usr/lib/xfce4/notifyd/xfce4-notifyd
run ibus-daemon -drxR
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run wineserver
run cbatticon -x xfce4-power-manager-settings
