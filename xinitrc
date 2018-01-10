xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xset -b &
xset dpms 0 1800 3600 &
xset s off &
xautolock -time 5 -locker /home/wouter/.scripts/lock.sh & 

numlockx &
g810-led -p ~/.config/g810-led/profile &
feh --no-fehbg --bg-fill ~/Images/bg.png &
compton &
exec i3
