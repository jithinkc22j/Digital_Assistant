#--------------------------------------------------------------------------
# Firewall activating function  
#--------------------------------------------------------------------------
echo "  ---------------------------------------------------"
espeak -g5 " Activating firewall............" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1

echo " Activating firewall............"
echo " "
./myip.sh
echo "  --------------------------------------------------"
# Listing IP tables
espeak -g5 " Listing IP tables" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Listing IP tables......"
echo " ----------------------------------------------------"
echo " "
sudo iptables -L
echo " ----------------------------------------------------"
echo " "
# Clear all rules
#--------------------------------------------------------------------------
espeak -g5 " Flushing the iptables" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Flushing the iptables......."
sudo /sbin/iptables -F
echo " "
espeak -g5 "Clearing all rules.........." -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Clearing all rules.........."
echo " "
espeak -g5 "IP table Flushed............" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " IP table Flushed............"
echo " "
espeak -g5 "Dropping Forward traffic...." -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Dropping Forward traffic...."
sudo /sbin/iptables -P FORWARD DROP 
echo " "
espeak -g5 "Allowing outgoing traffic..." -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Allowing outgoing traffic..."
sudo /sbin/iptables -P OUTPUT ACCEPT
echo " "
espeak -g5  "Allowing established traffic" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Allowing established traffic"
sudo /sbin/iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT 
echo " "
espeak -g5 "Allowing localhost traffic.." -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Allowing localhost traffic.."
sudo /sbin/iptables -A INPUT -i lo -j ACCEPT
echo " "
espeak -g5 "All traffic are set" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
 #--------------------------------------------------------------------------
echo " ---------------------------------------------------- All traffic are set........--------------------------------------------------- "
echo " "
echo " Loading Rules Management section........"
echo " " 

 pass=$(hostname -I | awk '{print $1}')
espeak -g5 "Allowing web server" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Allowing web server (http)..................."
sudo /sbin/iptables -A INPUT -p tcp --dport 80 -j LOG --log-level 7 --log-prefix "Accept 80 HTTP"
sudo /sbin/iptables -A INPUT -p tcp -d $pass --dport 80 -j ACCEPT
echo " "
espeak -g5 "Allowing two types of I C M P" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Allowing two types of ICMP..................."
sudo /sbin/iptables -A INPUT -p icmp -d $pass --icmp-type 8/0 -j LOG --log-level 7 --log-prefix "Accept Ping"
sudo /sbin/iptables -A INPUT -p icmp -d $pass --icmp-type 8/0 -j ACCEPT
sudo /sbin/iptables -A INPUT -p icmp -d $pass --icmp-type 8/0 -j LOG --log-level 7 --log-prefix "Accept Time Exceeded"
sudo /sbin/iptables -A INPUT -p icmp -d $pass --icmp-type 11/0 -j ACCEPT
echo " "
espeak -g5 " All  rules are added........." -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " All  rules are added........."

 #--------------------------------------------------------------------------
echo " ---------------------------------------Denying all others -----------------------------------------------------------"
sudo /sbin/iptables -A INPUT -d $pass -j LOG --log-level 7 --log-prefix "Default Deny"
sudo /sbin/iptables -A INPUT -j DROP

sleep 1
espeak -g5 " Firewall Activated " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " ------Congratulation!!!!!--------------------Firewall Activated---------- feel free-------do your work------------ "
echo " "
 #--------------------------------------------------------------------------
