#-----------------------------------------------------------------------------------
#      Greetings function
#-----------------------------------------------------------------------------------

#-------------------------check greetings by time -----------------------------------
f3=$(date +'%p')
if [ $f3 == 'AM' ]
then
 #--------------------------------------------------------------------------
espeak " Gouvd morning $1" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
echo " "
echo " Good Morning $1 "
else
 f=$(date +'%I')
 if [ $f -lt 04 ]
 then
 
 #--------------------------------------------------------------------------
 espeak " Gouvd After noon $1" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
 echo " "
 echo " Good Afternoon $1 "
 else if [ $f -lt 08 ]
 then
 #--------------------------------------------------------------------------
 
 espeak " Gouvd Evening $1" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
 echo " "
 echo " Good Evening $1 "
 else
 #--------------------------------------------------------------------------

 espeak " Gouvd Night$1" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
 echo " "
 echo " Good Night $1 "
 fi
 fi
 fi
 #-------------------------------------------------------------------------------------
