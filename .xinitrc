pipewire &
pipewire-pulse &
pipewire-media-session &
unclutter -idle 3 &
xsetroot -cursor_name left_ptr &

exec dbus-launch --sh-syntax --exit-with-session bspwm
#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session
