 #--------------------------------------------------------------------------
# Finding public IP
 #--------------------------------------------------------------------------
v=$(curl ifconfig.me)
echo "$v" >> nn.txt
sleep 1
exit
 #--------------------------------------------------------------------------
