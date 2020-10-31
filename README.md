
# Digital Assistant 
It's a simple digital assistant program using shell

This digital assistant create an interactive shell to the user.  it will exploit  built in applications of linux to make more user friendly. User can give commands to open a service or an application and run using command line input.

The repository includes:


      ./setup.sh                     - This script will install this application
      ./main.sh                      - Main function 
      ./permission.sh                - Providing permission to all scripts
      ./interface.sh                 - Creating user interface
      ./initialization.sh            - Initializing all components
      ./intro.sh                     - Graphical intro
      ./greetings.sh                 - Greeting user
      ./welcome.sh                   - Welcome function
      ./date_check.sh                - Date finding function
      ./time_check.sh                - Time checking function
      ./firewall.sh                  - Creating firewall
      ./deactivatefirewall.sh        - Disable firewll
      ./power_check.sh               - Power checking
      ./brightness_update.sh         - Brightness updating
      ./ngcheck.sh                   - ngrok for open tunnel
      ./weather_update.sh            - Weather update
      ./sys_vul.sh                   - System vulnerability checking 
      ./system_cpu.sh                - System config function
      ./myip.sh                      - IP fetching function
      ./ii.sh                        - Supporting function
      ./pattern_jk.sh                - Pattern creation
      ./volume_update.sh             - Volume update


# Installation steps:

Giving permission to the setup script

     1. chmod 777 ./setup.sh
     
Installation
     
     2. ./setup.sh
     
    
# Dependency

   VLC
          
       sudo add-apt-repository ppa:videolan/stable-daily
       sudo apt-get update
       sudo apt-get install vlc
     
 eSpeak
 
       apt-get update && apt-get upgrade -y
       apt-get install espeak
       
       
# Commands
  
  Here some example commands:
  
    what is your name
    what is my name
    how are you
    hi jarvis
    hello jarvis
    today date
    time
    set firewall
    deactivate firewall
    power state
    update brightness
    open public port
    update weather
    weather info
    system vulnerability
    system info
    volume increase
    ip address
    start vlc player
    start chrome
    open text editor
    start empty document
    search document
    clear screen
    exit
