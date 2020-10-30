#--------------------------------------------------------------
#  System Info function
#-------------------------------------------------------------

espeak "$(lscpu | grep -w "Architecture:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1

echo " $(lscpu | grep -w "Architecture:")"
#--------------------------------------------------------------------------

espeak "$(lscpu | grep -w "CPU(s):")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " $(lscpu | grep -w "CPU(s):")"

#--------------------------------------------------------------------------
espeak "$(lscpu | grep -w "CPU op-mode(s):")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " $(lscpu | grep -w "CPU op-mode(s):")"

#--------------------------------------------------------------------------

espeak "$(lscpu | grep -w "Byte Order:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " $(lscpu | grep -w "Byte Order: ")"

#--------------------------------------------------------------------------

espeak "$(lscpu | grep -w "Address sizes:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " $(lscpu | grep -w "Address sizes:")"

#--------------------------------------------------------------------------
espeak "$(lscpu | grep -w "On-line CPU(s) list:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " $(lscpu | grep -w "On-line CPU(s) list:")"

#--------------------------------------------------------------------------
espeak "$(lscpu | grep -w "Thread(s) per core:")" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " $(lscpu | grep -w "Thread(s) per core:")"
sleep 0.5


