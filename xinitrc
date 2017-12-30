xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xset -b

feh --bg-fill ~/Images/bg.png &
compton -b &
exec i3
