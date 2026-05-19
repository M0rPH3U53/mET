#!/bin/bash

# Banniere
cat <<"EOF"

                    _/_/_/_/  _/_/_/_/_/
   _/_/_/  _/_/    _/            _/
  _/    _/    _/  _/_/_/        _/
 _/    _/    _/  _/            _/
_/    _/    _/  _/_/_/_/      _/                                                             

by M0rPH3U53

EOF

# Couleur ASSCI
BLEU='\033[34m'
ROUGE='\033[0;31m'
VERT='\033[0;32m'
GRIS='\033[0;90m'
RESET='\033[0m'
BLANC='\033[1;37m'
JAUNE='\033[0;33m'

# Dossier pour fichiers info certif SSL
mkdir -p mET

# Recupere adresse réseau + CIDR
IP=$(ip route | grep -E '^[0-9]' | awk '{print $1}')

echo " "
echo -e "${VERT}[+]${RESET} ${BLANC}Réseaux disponible${RESET} "
echo " "
echo "${IP}"
echo " "

# Interfaces réseaux
echo -ne "${BLEU}[i]${RESET} ${BLANC}Network:${RESET} "
read network

# Découverte réseau
hotes=$(netdiscover -r ${network} -P | grep -E '[0-9]+\.' | awk '{print $1}')


# Chemin fichier
dir=$(pwd)

echo " "
echo -ne "🔍 ${BLANC}Scan ssl-cert...${RESET}"

# Recupere info certificat SSL
for hote in ${hotes}; do
    ssl_cert=$(nmap -sT --open --script ssl-cert ${hote} -vv | grep -B1 "^|")
done

echo -e "${JAUNE}100%${RESET}"

# Verifie si la variable est vide
if [ -z "${ssl_cert}" ]; then
    echo "❌ Aucun Certificat SSL"
    exit 1
else
    echo " "
    echo -ne "🖥️ ${BLANC}Hotes${RESET}"
    echo " "
    echo " "
    echo -ne "${VERT}[+]${RESET} ${hote}"
    echo "${ssl_cert}" > "${dir}/mET/${hote}-certSSL.txt"
    echo " "
    echo " "
    echo -e "💾 Sauvegardé --> "${dir}"/mET"
fi
