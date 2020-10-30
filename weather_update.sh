#--------------------------------------------------------------------------
# Weather finding function -  
#--------------------------------------------------------------------------
if [ -z "$1" ]
then
# finding current weather based on IP
#--------------------------------------------------------------------------
   espeak "Finding Current weather status Based on your I P ADDRESS" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
   echo " "
   echo " -------------------------------------------------------------------------------------------------------------"
   curl wttr.in
   echo " -------------------------------------------------------------------------------------------------------------"
#--------------------------------------------------------------------------

else
 espeak "Type zipcode or name of the place " -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1  
     echo " "
     read -p "Type zipcode/place name ..:" m 
     
# finding weather based on your prefered location
#--------------------------------------------------------------------------
    espeak "Finding current weather status of $m" -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
   echo " "
   echo " -------------------------------------------------------------------------------------------------------------"
   curl wttr.in/$m
   echo " -------------------------------------------------------------------------------------------------------------"
fi
#--------------------------------------------------------------------------
