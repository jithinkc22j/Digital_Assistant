
#-------------------------------------------------------------------------------------------------------------------------
# Power system checking function 
#-------------------------------------------------------------------------------------------------------------------------

sp=$(upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage" | grep "state")
st=$(upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage" | grep "time to full")
sd=$(upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage" | grep "time to empty")
ss=$(cat /sys/class/power_supply/BAT0/capacity)
#--------------------------------------------------------------------------#--------------------------------------------------------------------------
echo " "
echo  " ---------------------------------------------------------------------"
echo "                     Checking power level"
echo  " ---------------------------------------------------------------------"
espeak -g5 -s180 "Checking power level  " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " "
#--------------------------------------------------------------------------#--------------------------------------------------------------------------

espeak -g5 -s180 " Power level $ss percentage" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Power level $ss percentage"
echo " "
#-----------------------------------state checking ----------------------------------------------------------------------
espeak -g5 -s180 " Checking power state " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Checking power state "
echo " "
upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage" | grep "state"
if [ -z "$sd" ]
then
#--------------------------------------------------------------------------#--------------------------------------------------------------------------

espeak -g5 -s180 "$sp" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak -g5 -s180 "$st" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " "
upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage" | grep "time to full"
echo " "
else
#--------------------------------------------------------------------------#--------------------------------------------------------------------------

espeak -g5 -s180 "$sp" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak -g5 -s180 "$sd" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " "
upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage" | grep "time to empty"
echo " "
fi
i=1

#------------------------------------checking if need backup --------------------------------------------------------------
while [ $i -lt 3 ]
do
pp=$(upower -i $(upower -e | grep BAT) | grep --color=never -E state)
op="state:"
rv=$(./string_split.sh "$pp" "$op")

#--------------------------------------------------------------------------
if [ $ss -lt 10 ] && [ $rv == 'discharging' ]
then
sleep 0.5
espeak -a400 -s150 " Warning" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
espeak -a400 " Power system critical please charge your system " -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
echo " Warning: Power System Critical !!!!!!!    Please Charge Your System !!!!!!!!!!!! "
#--------------------------------------------------------------------------

if [ $i == 1 ]
then 
./brightness_update.sh "$ss"
i=2
fi
#--------------------------------------------------------------------------
else
sleep 0.3
espeak " Power system looking good" -w foo.wav
   vlc --fullscreen --effect-list=spectrometer foo.wav
   sleep 1
./brightness_update.sh "$ss"
echo " Power System Looking Good"
break
fi
done
echo  " ----------------------------------------------------------------------"
#----------------------------------------------------------------------------------------------------------------------------
