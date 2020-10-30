#--------------------------------------------------------------------------
# ngrok checking function
#--------------------------------------------------------------------------
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
./network_interface.sh 
#--------------------------------------------------------------------------
#--------------------------------------------------------------------------

ping -c 1 google.com > /dev/null 2>&1
  if [[ "$?" != 0 ]]
  then
  exit
  else
espeak -g2 " Checking n g rok " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
   
echo " Checking ngrok ....... "
#--------------------------------------------------------------------------
s=$(whoami)
echo " "
sleep 0.1
d= find | grep -w "ngrok.yml"
#--------------------------------------------------------------------------
if [ $d = "./.ngrok2/ngrok.yml" ] 
then
espeak -g2 "n g rok found " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
  echo "ngrok found.........."
  echo " "
  espeak -g2 "Enter the full path to n g rok " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
  read -p "Enter the full path to ngrok               :" pathn
  echo "  "
  cd $pathn
  echo " "
  
  espeak -g2 "Enter your authentication token " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
  read -p "Enter your authentication token                :" toke
  echo " "
  #--------------------------------------------------------------------------
  tt= ./ngrok authtoken $toke | grep -w "ERROR"
  if [ $tt = "ERROR:  You must pass a single argument, the authtoken to save to configuration file." ]
  then 
    echo " "
    espeak -g2 "Token Authentication Failed " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
    echo " Token Authentication Failed....... "
    echo " "
    exit
  #--------------------------------------------------------------------------
  else
    ./ngrok authtoken $toke
    echo " "
    espeak -g2 "Authentication successful & opening ngrok terminal " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
    echo "Authentication successful & opening ngrok terminal "
    echo " "
    ./ngrok tcp 3389
  fi
#--------------------------------------------------------------------------
else
   echo " "
   espeak -g2 "n g rok not found " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
   echo "ngrok not found........"
   echo " "
   sleep 0.5
   espeak -g2 " Downloading n g rok" -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
   echo " Downloading ngrok ....."
   echo " "
   sleep 0.5
   espeak -g2 "Register in n g rok - opening n g rok website " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
   echo " Register in ngrok - opening ngrok website.."
   echo " "
   sleep 0.5
   xdg-open https://dashboard.ngrok.com/signup
   clear
   echo " "
  #--------------------------------------------------------------------------
   while [ 1==1 ]
   do
   espeak -g2 " Have you completed registration" -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
   echo -e "${RedF} Have you completed registration [y/n] :${white}"
   read -p " " pp
   echo " "
  #--------------------------------------------------------------------------
   if [ $pp = 'y' ]
   then
   espeak -g2 "Opening n g rok downloading page " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
      echo " Opening ngrok downloading page............. "
      echo " "
      sleep 0.5
      xdg-open https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
      echo " "
      sleep 0.5
      espeak -g2 "have you completed downloading " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
      echo -e "${RedF} completed downloading..? [y/n] :${white}"
      read -p " " po
      echo " "
      sleep 0.5
   #--------------------------------------------------------------------------
      if [ $po = 'y' ]
      then
        cd /home/$s/Downloads
        unzip ngrok-stable-linux-amd64.zip -d ngrok-stable-linux-amd64
        sleep 2
        cd ngrok-stable-linux-amd64
        echo " "
        espeak -g2 "Enter your authentication token " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
        read -p "Enter your authentication token                :" toke
        echo " "
        tt= ./ngrok authtoken $toke | grep -w "ERROR"
        echo " "
   #--------------------------------------------------------------------------     
        if [ $tt = 'ERROR:  You must pass a single argument, the authtoken to save to configuration file.' ]
        then 
          echo " "
          espeak -g2 "Token Authentication Failed " -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
          echo " Token Authentication Failed....... "
          echo " "
          exit
 #--------------------------------------------------------------------------
        else
        espeak -g2 " Authenticating N G rok" -w foo.wav
         gnome-terminal --  ./interface.sh
       sleep 2
   
#--------------------------------------------------------------------------

./ngrok authtoken $toke

   espeak -g2 " N G rok Authentication successfull " -w foo.wav
   gnome-terminal --  ./interface.sh
   sleep 2
#--------------------------------------------------------------------------
   
   espeak -g2 " opening N G rok public port 3 3 8 9 T C P connection" -w foo.wav
   gnome-terminal --  ./interface.sh
   sleep 2
./ngrok tcp 3389
         exit
        fi
       else
        echo " "
        echo " Waiting for completing your downloaad "
        echo " "
      fi
    fi
   done
fi
fi
#--------------------------------------------------------------------------
