#!/bin/bash

#---------------------------------------------------------------#
#                           Présentation                        #
#---------------------------------------------------------------#

echo -e " _______  _______  _______  _______ _________ _______ "
echo -e "(  ____ \(  ____ \(  ___  )(  ____ )\__   __/(  ___  )" 
echo -e "| (    \/| (    \/| (   ) || (    )|   ) (   | (   ) |"
echo -e "| (__    | |      | |   | || (____)|   | |   | (___) |"
echo -e "|  __)   | |      | |   | ||     __)   | |   |  ___  |" 
echo -e "| (      | |      | |   | || (\ (      | |   | (   ) |"
echo -e "| (____/\| (____/\| (___) || ) \ \_____) (___| )   ( |" 
echo -e "(_______/(_______/(_______)|/   \__/\_______/|/     \|"
echo
echo -e "#----------------------------------------------------#" 
echo -e "#  Nom du projet: EcoWebHost                         #"
echo -e "#  Créateur: Pierric Buchez                          #" 
echo -e "#  Date de début du projet: 19/07/2021               #" 
echo -e "#  Description: EcoWebHost est une blockchain.       #"
echo -e "#               reposant sur le Proof of host.       #"
echo -e "#----------------------------------------------------#"

echo -e "\n\n"

#---------------------------------------------------------------#
#                         Fin de Présentation                   #
#---------------------------------------------------------------#

echo "Voulez-vous poursuivre l'installation ? (Oui/Non)"
read reponse
if [[ "$reponse" == "Oui" ]]
then 
   
echo -e "#---------------------------------------------------------------#" 
echo -e "#                         Installation de crowdSec              #" 
echo -e "#---------------------------------------------------------------#"
echo -e "\n\n"

curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash
sudo apt-get install crowdsec

curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash
sudo apt install crowdsec-firewall-bouncer crowdsec-firewall-bouncer-iptables 

fi
