
# System vulnerability checking function
#--------------------------------------------------------------------------
espeak " Checking Hard ware Vul nerability " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " -----------------------------------------------------------------------------"
echo "     Hardware vulnerability "
echo " -----------------------------------------------------------------------------"

espeak " Checking Itlb multihit " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak "$(lscpu | grep -w "Itlb multihit:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo "$(lscpu | grep -w "Itlb multihit:")"
vv=$(lscpu | grep -w "Itlb multihit:");

if [ "$vv" == 'Affected' ];
then
espeak " Looking for solution "
fi
#--------------------------------------------------------------------------


espeak " Checking L1tf: " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak "$(lscpu | grep -w "L1tf:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo "$(lscpu | grep -w "L1tf:")"

if [ "$(lscpu | grep -w "L1tf:")" == 'Affected' ]
then
espeak " Looking for solution " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
fi
#--------------------------------------------------------------------------

espeak " Checking Tsx async abort:" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak "$(lscpu | grep -w "Tsx async abort: ")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo "$(lscpu | grep -w "Tsx async abort: ")"

if [ "$(lscpu | grep -w "Tsx async abort: ")" == 'Affected' ]
then
espeak " Looking for solution " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
fi
#--------------------------------------------------------------------------

espeak " Checking Spec store bypass: " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak "$(lscpu | grep -w "Spec store bypass:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo "$(lscpu | grep -w "Spec store bypass:")"

if [ "$(lscpu | grep -w "Spec store bypass:")" == 'Affected' ]
then
espeak " Looking for solution " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
fi

#-------------------------------------------------------------------------------------
espeak " Checking Mds: " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak "$(lscpu | grep -w "Mds:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo "$(lscpu | grep -w "Mds:")"
vp=$(lscpu | grep -w "Mds:")
if [ "$vp" == 'Affected' ] || [ "$vp" == 'enabled' ]
then
espeak " Looking for solution " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
fi
#--------------------------------------------------------------------------

espeak " Checking Meltdown: " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak "$(lscpu | grep -w "Meltdown:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo "$(lscpu | grep -w "Meltdown:")"

if [ "$(lscpu | grep -w "Meltdown:")" == 'Affected' ] || [ "$(lscpu | grep -w "Meltdown:")" == 'enabled' ]
then
espeak " Looking for solution " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
fi
#--------------------------------------------------------------------------

espeak " Checking MSpectre v1:" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak "$(lscpu | grep -w "Spectre v1:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo "$(lscpu | grep -w "Spectre v1:")"

if [ "$(lscpu | grep -w "Spectre v1:")" == 'Affected' ] || [ "$(lscpu | grep -w "Spectre v1:")" == 'enabled' ]
then
espeak " Looking for solution " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
fi
#--------------------------------------------------------------------------

espeak " Checking Spectre v2: " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak "$(lscpu | grep -w "Spectre v2:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo "$(lscpu | grep -w "Spectre v2:")"

if [ "$(lscpu | grep -w "Spectre v2:")" == 'Affected' ] || [ "$(lscpu | grep -w "Spectre v2:")" == 'enabled' ]
then
espeak " Looking for solution " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
fi
#--------------------------------------------------------------------------
