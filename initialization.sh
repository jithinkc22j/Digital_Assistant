echo " " && clear
   echo " ---------------------------------------------------------------------"
    echo "                                 JARVIS                              "
   echo " ---------------------------------------------------------------------"
  # 2. System Initializing -------------------------------------------------------------
   espeak "Initializing system" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
   echo " "
   
   for load in $(seq 1 100); do
   echo -ne " Initializing System..........................$load % \r"
   sleep 0.01
   done
   espeak "completed" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 0.5
   
   
   #-------------------------------------------------------------------------------------
 # 3. Network Connection checking  ------------------------------------------------------   
   echo " "
   ./network_interface.sh
  #-------------------------------------------------------------------------------------
  
  
  # 4. Loading component section -------------------------------------------------------
   
   espeak " loading components" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 0.1
   #sudo dmesg
   echo " "
   for load in $(seq 1 100); do
   echo -ne " Loading components...........................$load % \r"
    sleep 0.01
   done
   espeak "completed" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 0.1
   echo " "
    echo " ---------------------------------------------------------------------"
  # 5. System Vulnerability checking ----------------------------------------------------
 espeak "System vulnerability checking" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 0.1
    espeak "completed" -w foo.wav
    vlc --fullscreen --effect-list=spectrometer foo.wav
    sleep 0.1
  #---------------------------------------------------------------------------------------  
  # 6.Power system checking --------------------------------------------------------------
   espeak " checking power system " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 0.5
   echo " "
   for load in $(seq 1 100); do
   echo -ne " Checking power system .......................$load % \r"
    sleep 0.01
   done
   espeak "completed" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 0.5
 #-----------------------------------------------------------------------------------------
 
 # 7. Rendering video  ---------------------------------------------------------------------
   espeak "Rendering main control system" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 0.1
   ./intro.sh

   sleep 0.1
#--------------------------------------------------------------------------------------------   
