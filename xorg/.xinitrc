if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

pactl upload-sample /usr/share/sounds/freedesktop/stereo/bell.oga x11-bell
pactl load-module module-x11-bell sample=x11-bell display=$DISPLAY

export QT_QPA_PLATFORMTHEME=gtk2

xrdb -merge ~/.Xresources

xrandr --output DVI-0 --right-of DVI-1 --rotate right --output DVI-1 --right-of HDMI-0 --primary

exec i3
