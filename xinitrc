xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

feh --bg-fill ~/Images/bg.png &
compton -b &
exec i3
