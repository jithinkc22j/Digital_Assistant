#------------------------------------------------------------------------------
# Finding Connected Network interface
#-----------------------------------------------------------------------------

green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
RedF="${Escape}[31m";
LighGreenF="${Escape}[92m";
#--------------------------------------------------------------------------
echo " "
echo " ---------------------------------------------------------------------------"
echo "     Network connectivity "
echo " ---------------------------------------------------------------------------"
sleep 1
espeak "Checking for Network connecti,vity" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
 ping -c 1 google.com > /dev/null 2>&1
 #--------------------------------------------------------------------------
 
  if [[ "$?" != 0 ]]
  then
  echo " "
        espeak " System offline " -w foo.wav && echo -e $yellow " Network Connectivity :${RedF} System Offline..."
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
        
        espeak " Trying to connect network" -w foo.wav && echo -e " ${blue} Trying to connect network. "
   vlc --fullscreen --effect-list=spectrometer foo.wav
  
        espeak "Connection failed  System offline  " -w foo.wav && echo -e ${red} " Connection failed  System offline " 
   vlc --fullscreen --effect-list=spectrometer foo.wav
        sleep 1
        espeak  " System emer,gency manual over,ride" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
        echo -e "${white}"
        echo " ---------------------------------------------------------------------------"
        
  else
  
  #--------------------------------------------------------------------------
  echo " "
     espeak " System online " -w foo.wav && echo -e $yellow " Network Connectivity: ${LighGreenF} System Online"
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
     espeak " Finding Connected Network interface " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
     echo " "
   vv=$(ip addr show | awk '/inet.*brd/{print $NF}')
   espeak " Connected networkinterface: $vv" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
   echo -e $yellow " Connected networkinterface:  ${LighGreenF} $vv" 
   echo -e " ${white} "
   echo " ---------------------------------------------------------------------------"
   #./firewall.sh
  fi
  #--------------------------------------------------------------------------

