xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xset -b

g810-led -p ~/.config/g810-led/profile &
feh --bg-fill ~/Images/bg.png &
compton -b &
exec i3
