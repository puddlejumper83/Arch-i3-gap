#~/.xinitrc

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#Set background image
feh --bg-scale ~/Pictures/wallpaper.jpg

#Start music daemon
mpd &

#Enable compositor
compton &

# Disable clicks and scrolling when typing.
syndaemon -t -k -i 1 &

#Enable redshift
redshift -l 37.8715:-122.2727 &

# unclutter
unclutter &

#Start i3
exec i3
