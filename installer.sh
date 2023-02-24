#!/bin/bash
echo "========================================================================================================================================================="
echo ""
echo "    ███╗   ███╗ ██████╗    ███████╗███████╗██████╗ ██╗   ██╗███████╗██████╗     ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ ";
echo "    ████╗ ████║██╔════╝    ██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝██╔══██╗    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗";
echo "    ██╔████╔██║██║         ███████╗█████╗  ██████╔╝██║   ██║█████╗  ██████╔╝    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝";
echo "    ██║╚██╔╝██║██║         ╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██╔══╝  ██╔══██╗    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗";
echo "    ██║ ╚═╝ ██║╚██████╗    ███████║███████╗██║  ██║ ╚████╔╝ ███████╗██║  ██║    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║";
echo "    ╚═╝     ╚═╝ ╚═════╝    ╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝";
echo "                                                                                                                                                      ";
echo "    ██████╗ ██╗   ██╗    ████████╗██╗███╗   ███╗██╗   ██╗    ███████╗████████╗██████╗ ███████╗ █████╗ ███╗   ███╗                                     ";
echo "    ██╔══██╗╚██╗ ██╔╝    ╚══██╔══╝██║████╗ ████║╚██╗ ██╔╝    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔══██╗████╗ ████║                                     ";
echo "    ██████╔╝ ╚████╔╝        ██║   ██║██╔████╔██║ ╚████╔╝     ███████╗   ██║   ██████╔╝█████╗  ███████║██╔████╔██║                                     ";
echo "    ██╔══██╗  ╚██╔╝         ██║   ██║██║╚██╔╝██║  ╚██╔╝      ╚════██║   ██║   ██╔══██╗██╔══╝  ██╔══██║██║╚██╔╝██║                                     ";
echo "    ██████╔╝   ██║          ██║   ██║██║ ╚═╝ ██║   ██║       ███████║   ██║   ██║  ██║███████╗██║  ██║██║ ╚═╝ ██║                                     ";
echo "    ╚═════╝    ╚═╝          ╚═╝   ╚═╝╚═╝     ╚═╝   ╚═╝       ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝                                     ";
echo ""
echo "========================================================================================================================================================="
echo ""
echo ""
echo "Welcome!"
echo "Thank you for using this script to install your server."
echo ""
echo "What is the Direct Link to the Server Jar File? e.g.: https://example.com/downlaod/server.jar"
read -p "Download Link: " dwLink
echo ""
echo "How do you want the 'Tmux Session'/'MC Server' to be named? : "
read -p "Name: " svName
echo ""
echo "How much RAM is your Server allowed to use? e.g.: '6' => 6GB RAM"
read -p "RAM: " svRAM
echo ""
echo "========================================================================================================================================================="
echo ""
echo "  ╔═Your Answers"
echo "  ║Download Link:   "$dwLink
echo "  ║Server Name:     "$svName
echo "  ║RAM:             "$svRAM
echo "  ╚══════════════════"
echo ""
echo "========================================================================================================================================================="
echo ""
echo ""
echo "Downloading Files..."
curl -sO $dwLink

Serverfile=$(basename $dwLink)

echo 'tmux new-session -s "'$svName'" \; split-window -h \; send-keys "./mcserv.sh" C-m' >> startServer.sh
chmod +x startServer.sh
echo 'java -Xmx'$svRAM'G -jar '$Serverfile' nogui' >> mcserv.sh
chmod +x mcserv.sh

echo "Finished Installation! To start the Server execute 'startServer.sh' you can do this like this: ./startServer.sh"