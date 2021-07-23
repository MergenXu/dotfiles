export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx

xrdb ~/.Xresources
eval $(dbus-launch --sh-syntax --exit-with-session <window_manager>)

#sxhkd &
#exec bspwm 

exec dwm
