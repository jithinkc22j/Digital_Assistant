#------------------------------------------------------------------------
 
  rm foo.wav
  clear && echo "  "
  au=0;
  i=0;
  i=$(cat auth.txt | grep "i=")
  au=$(cat auth.txt | grep "auth")
  ch=$(cat auth.txt | grep "uname")
  if [ "$i" == "i=1" ]
  then
  a=1
 while [ $a -le 3 ]
 do 
# 1. AUthentication  ------------------------------------------------------------------------
   espeak "checking for authentication" -w foo.wav
   gnome-terminal -- ./interface.sh
   sleep 1
  read -p "checking for authentication :"  ch 
 if [ "$au" == "auth:$ch" ]
 then 
  espeak "Welcome back you sir " -w foo.wav
  vlc --fullscreen --effect-list=spectrometer foo.wav
  sleep 0.5
  echo " "
  echo " Welcome back you sir "
  # 2. - 7. ---------------------------------------------------------------------------------
  #./initialization.sh

# 8.Greetings  ------------------------------------------------------------------------------   
   ./greetings.sh "$ch"

# 9. voice/string search assistant ---------------------------------------------------------
   ./string_search.sh "$ch"
  else
   espeak "authentication failed $a time" -w foo.wav
   gnome-terminal -- ./interface.sh
   sleep 2
   if [ $a == 3 ]
   then
    espeak "Authentication failed for,matting com,plete data" -w foo.wav
   gnome-terminal -- ./interface.sh
   sleep 1
   rm auth.txt
   fi
a=$(( a+1 ))
   fi
  done
 else

 # 1.1 Adding new user --------------------------------------------------------------------
   espeak "welcome sir" -w foo.wav
   gnome-terminal -- ./interface.sh
   sleep 1
   echo " Welcome sir."
   echo " " && clear
   espeak "may i have your name sir" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
   read -p "May i have your name ? :"  ch
   echo "uname:$ch" >> auth.txt
    echo "i=1" >> auth.txt
      espeak "Enter your new authentication credential:" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
   read -p "Enter your new authentication credential:"  au
   echo "auth:$au" >> auth.txt

# 2. - 7. ---------------------------------------------------------------------------------
  ./initialization.sh

# 8.Greetings  ------------------------------------------------------------------------------   
   ./greetings.sh "$ch"

# 9. voice/string search assistant ---------------------------------------------------------
   ./string_search.sh "$ch"
   fi
