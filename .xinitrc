xrandr --auto

xset -b b off &
xset dpms 0 1800 3600 &
xset s off &
xautolock -time 10 -locker /home/wouter/.scripts/lock.sh & 
numlockx &

g810-led -p ~/.config/g810-led/profile &
xrdb ~/.Xresources &

feh --no-fehbg --bg-fill ~/Images/bg.png &
compton -c -b
exec polybar main -q &
exec i3
