#---------------------------------------------------------------------------------------
# volume updating function
#---------------------------------------------------------------------------------------
if [ -z "$1" ]
then
#input the volume level 
#--------------------------------------------------------------------------
#amixer -q set Master toggle && amixer -M set 'Master' 20%- && amixer -M  set 'Master' 0%+
#amixer -q set Master toggle && amixer -M set 'Master' 0%- && amixer -M  set 'Master' 100%+
amixer -q set Master toggle && amixer -M set 'Master' 10%- && amixer -M  set 'Master' $1%+
#amixer -q sset Master toggle && amixer sset 'Master' 100%- && amixer sset 'Master' $1%+
#gnome-terminal -- $(amixer -M set 'Master' $1%)

else
#-------------------------------default case 
#amixer -q set Master toggle && amixer -M set 'Master' 0%- && amixer -M set 'Master' 100%+
#amixer -q set Master toggle && amixer -M set 'Master' 60%- && amixer -M set 'Master' 20%+
#amixer -q set Master toggle && amixer -M set 'Master'60%- && amixer -M set 'Master' 100%+
fi
     espeak "Updated volume level $1 percentage" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
#--------------------------------------------------------------------------
