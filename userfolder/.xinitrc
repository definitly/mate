

export LANG='ru_RU.UTF-8'
export LC_ALL='ru_RU.UTF-8'

exec   setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" -variant ",winkeys"  &  
dzenconky &
tint2 &
fbpanel &
xbindkeys
openbox-session 








 








