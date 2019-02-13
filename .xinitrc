#Display settings
xrandr --auto

#X settings
xset -b b off &
xset dpms 0 1800 3600 &
xset s off &

#Start bluetooth
bluetoothctl -- power on >> /dev/null 2>&1 &

#Enable autolock
xautolock -time 10 -locker /home/wouter/.scripts/lock.sh & 

#Numlock
numlockx &

#Keyboard led 
g810-led -p ~/.config/g810-led/profile &

#X resources
xrdb ~/.Xresources &

#Background
feh --no-fehbg --bg-fill ~/Images/bg.png &

#Compositor 
compton -c -b

#Polybar
exec polybar main -q &

#Window manager
exec i3
