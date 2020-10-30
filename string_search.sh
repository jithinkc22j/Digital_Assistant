m=1
v1=1
clear
while [ $m == 1 ]
do
#-----------------------------------------------------------------------

if [ $v1 -le 7 ]
then
#espeak -g1  -s160 " How may i help  you sir " -w foo.wav
#gnome-terminal --  ./interface.sh
./welcome.sh "$v1"
echo " "
read -p "Type here ..:" mp
#----------------------------------------------------------------------

a=($mp)
#echo "${a[@]}"

b=(hi jarvis hai hello name you myname yourname your my how are date time today firewall set activate on off deactivate power check level state  info status brightness update open public port ngrok weather yourself myself system vulnerability cpu info information architecture details volume increase decrease clear all screen vlc start stop chrome google text editor gedit empty document search ipaddress ip local)
v=$(echo "${b[@]}" | wc -w)
s=$(echo "${a[@]}" | wc -w)
j=0
#echo "$b $v $s $a"
#ch=()
while [ $j -lt $s ]
do
i=0
while [ $i -lt $v ]
do
if [ "${a[j]}"  == "${b[i]}" ]
then
ch=( "${ch[@]}" "${a[j]}" )
 fi
 i=$(( i+1 ))
 done
 j=$(( j+1 ))
 done
 #echo ${ch[@]}
 echo ${ch[@]} | tr -d ' ' >> nn.txt
 vv=$(cat nn.txt)
 
 echo "$vv"
 case "$vv" in
 #-----------------------greetings---------------------------------------------------------
   "myname" | "namemy" | "callme" | "myself") 
   espeak " Your name is $1" -w foo.wav
  cc  ./interface.sh
   sleep 1
   echo " Your name is $1"
   ;;
   
   "yourname"| "yourself")
   espeak -g2 " My name is Jarvis" -w foo.wav
   gnome-terminal --  ./interface.sh
   sleep 1
   espeak -g2 " i am your voice Assistant" -w foo.wav
   gnome-terminal --  ./interface.sh
   sleep 1
   ;;
   
   "howareyou")
   espeak "i am fine thank you sir" -w foo.wav
   gnome-terminal --  ./interface.sh
   sleep 1
   echo "i am fine thank you sir"
   ;;
   
   "hello" | "hi" | "hai" | "jarvis" | "hijarvis" | "haijarvis" | "jarvishi" | "hellojarvis" )
   
   espeak "Hello sir" -w foo.wav
   gnome-terminal --  ./interface.sh
   sleep 1
   echo " hi sir"
   ;;

#----------------------- Services --------------------------------------------------------
 "datetoday" | "todaydate" | "date" | "today")
   ./date_check.sh
   ;;
   
   "time") 
   ./time_check.sh
   ;;
   
   "setfirewall" | "firewallset" | "activatefirewall" | "firewallactivate" | "onfirewall" | "firewallon")
   ./firewall.sh
   ;;
   
   "deactivatefirewall" | "firewalldeactivate" | "firewalloff" | "offfirewall")
   ./deactivatefirewall.sh 
   ;;
   
   "powerinfo" | "powerstate" | "powerlevel" | "powercheck" | "checkpower" | "levelpower" | "statepower" | "infopower" | "powerstatus" | "statuspower" | "powerinformation" | "informationpower" | "powerdetails" | "detailspower"s)
   ./power_check.sh 
   ;;
   
   "brightnessupdate" | "updatebrightness" | "brightness")
   ./brightness_update.sh
   ;;
   
   "publicport" | "openpublicport" | "publicportopen" | "openngrok" | "ngrokopen" | "ngrokport" | "portngrok")
   gnome-terminal -- ./ngcheck.sh
   ;;
   
   "checkweather" | "weathercheck" | "weather" | "weatherstatus" | "statusweather" | "weatherinfo" | "infoweather" | "weatherinformation" | "informationweather" | "weatherdetails"| "detailsweather")
   
     ./weather_update.sh
     espeak "If you want to find weather status of other place" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
     read -p "If you want to find weather status of another place [y/n]:" o
      if [ "$o" == "y" ]
      then   
     ./weather_update.sh "$o"
     fi
   ;;
   
   "Systemvulnerability" | "vulnerabilitysystem" | "vulnerability")
   ./sys_vul.sh
   ;;
   
   "systeminfo" | "systeminformation" | "systemarchitecture" | "architecturesystem" | "detailssystem" | "systemdetails" | "systemcpu" | "cpusystem" | "cpudetails" | "detailscpu" | "cpuinfo" | "infocpu" | "cpuarchitecture" | "architecturecpu" | "cpuinformation" | "informationcpu")
   ./system_cpu.sh
   ;;
   
   "volume" | "increasevolume" | "decreasevolume" | "volumedecrease" | "volumeincrease" |"updatevolume" | "volumeupdate")
    espeak "Enter volume level" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
     read -p "Enter volume level:" o
   ./volume_update.sh "$o"
   ;;
   
"ip" | "ipaddress" | "localip" | "publicip")
./myip.sh
;;
   

 #----------------------- applications --------------------------------------------------------
   "vlc" |"openvlc" | "vlcopen" | "startvlc" | "vlcstart")
    espeak "starting v l c" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
   gnome-terminal -- vlc
   ;;
   
   "googlechrome" | "chrome" | "chromegoogle" | "openchrome" | "startchrome" | "chromeopen" | "chromestart")
    espeak "starting google chrome" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
   gnome-terminal -- google-chrome
 ;;
 
 "texteditor" | "opentexteditor" | "texteditoropen" | "starttexteditor" | "texteditorstart" | "gedit")
  espeak "Opening G edit" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
 gnome-terminal -- gedit
 ;;
 
 "openemptydocument" | "startemptydocument" | "emptydocument" | "document")
  espeak "Creating an empty document" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
  touch new.txt
  gnome-terminal -- gedit new.txt
 ;;
 
"searchdocument" | "documentsearch")
 espeak "Enter the file name to search:" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
read -p "Enter the file name to search:" s
 espeak "Searching for file $s" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
     sleep 1
find . -type f -name "$s"
 ;;
 #-----------------------others-----------------------------------------------------------
    "clear" | "clearscreen" | "screenclear" | "clearall")
     espeak "Clearing screen" -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
   clear
   ;;
   
    espeak "exiting.." -w foo.wav
     vlc --fullscreen --effect-list=spectrometer foo.wav
   "exit") exit 
   ;;
   *)
   espeak " something went wrong please try again " -w foo.wav
   gnome-terminal --  ./interface.sh
   sleep 1
   ;;
 esac
 unset ch
 rm nn.txt
 v1=0
 else 
 v1=1
 fi
 sleep 4
 done
