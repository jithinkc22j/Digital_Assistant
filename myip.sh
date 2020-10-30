 #--------------------------------------------------------------------------
 # Find my local IP function
 #--------------------------------------------------------------------------
espeak " Fetching Local I P address" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " ---------------------------------------------------"
v=$(hostname -I | awk '{print $1}'| grep -v "%")
espeak " local I P address $v" -w foo.wav && echo " Local IP : $v" 
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " "
#--------------------------------------------------------------------------
espeak " Fetching Public I P address" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
gnome-terminal -- "./ii.sh"
sleep 2
vm=$(cat nn.txt | grep ".")
sleep 1
#--------------------------------------------------------------------------
espeak " public I P address $vm" -w foo.wav && echo -ne " Public IP : " && curl ifconfig.me 
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " "
echo " ---------------------------------------------------"
rm nn.txt
#--------------------------------------------------------------------------
