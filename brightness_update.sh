#--------------------------------------------------------------------------
#Brightness managing function
#--------------------------------------------------------------------------
# input the needed brightness level / automatically fetch with power level and adjust the brightness

if [ $1 -gt 81 ] 
then
 vv=$(echo 7812 | sudo tee /sys/class/backlight/intel_backlight/brightness "7812")
 espeak "Up,dating bright,ness to high performance mode" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
 #--------------------------------------------------------------------------
 sudo rm $vv
 else if [ $1 -gt 69 ]
 then
 vv=$(echo 5859 | sudo tee /sys/class/backlight/intel_backlight/brightness)
 espeak "Up,dating bright,ness to moderate level" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
 #-------------------------------------------------------------------------- 
 else if [ $1 -gt 39 ]
 then
 vv=$(echo 3906 | sudo tee /sys/class/backlight/intel_backlight/brightness)
 espeak "Up,dating bright,ness to balancing mode" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
 #-------------------------------------------------------------------------- 
 else if [ $1 -lt 39 ]
 then
 vv=$(echo 1562 | sudo tee /sys/class/backlight/intel_backlight/brightness)
 espeak "Up,dating bright,ness to power saver mode" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
 #--------------------------------------------------------------------------
 else
 vv=$(echo 7812 | sudo tee /sys/class/backlight/intel_backlight/brightness)
fi
fi
fi
fi
#sudo rm $vv
#-----------------------------------------------------------------------------
