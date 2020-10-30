#--------------------------------------------------------------------------
# Deactivating firewall firewall / Flushing IP tables
#--------------------------------------------------------------------------
espeak " Firewall deactivating" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
sleep 2
echo " "
echo "Firewall deactivating.."
echo " "
#--------------------------------------------------------------------------
sudo iptables -F
sudo iptables -L 
espeak " Firewall deactivated" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " "
echo "Firewall deactivated.."
#--------------------------------------------------------------------------
