#--------------------------------------------------------------------------
# Welcome quotes functions
#--------------------------------------------------------------------------
if [ $1 == 1 ]
then
espeak -g1  -s160 " How may i help  you sir " -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
echo " "
#--------------------------------------------------------------------------
else if [ $1 == 2 ]
then
espeak -g5  -s160 " How can i be of service " -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
echo " "
#--------------------------------------------------------------------------
else if [ $1 == 3 ]
then
espeak -g5  -s160 " How can i help  " -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
echo " "
#--------------------------------------------------------------------------
else if [ $1 == 4 ]
then
espeak -g5  -s160 " Would you like me to do something  sir " -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
echo  " "
#--------------------------------------------------------------------------
else if [ $1 == 5 ]
then
espeak -g5 -s160 "Do you want me to do something " -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
echo " "
#--------------------------------------------------------------------------
else if [ $1 == 6 ]
then
 espeak -g5  -s160 "I had be happy to do something " -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
echo " "
#--------------------------------------------------------------------------
else if [ $1 == 7 ]
then
espeak -g5  -s160 " what can i do for you sir " -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 1
echo " "
else
exit
fi
fi
fi
fi
fi
fi
fi
#--------------------------------------------------------------------------
