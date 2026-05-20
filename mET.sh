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

# Adresse réseau + CIDR
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

# Chemin
dir=$(pwd)

echo " "
echo -ne "🔍 ${BLANC}Scan ssl-cert...${RESET}"
hotes_cert=""

# Scan chaque hotes
for hote in ${hotes}; do
    ssl_cert=$(nmap -sT --open --script ssl-cert "${hote}" -vv 2>/dev/null | grep -B1 "^|")

    if [ -n "${ssl_cert}" ]; then
        hotes_cert="${hotes_cert} ${hote}"
        echo "${ssl_cert}" > "${hote}-certSSL.txt"
    fi
done

echo -e "${JAUNE}100%${RESET}"

# Verifi si variable vide & affiche les hotes
if [ -z "${hotes_cert}" ]; then
    echo "❌ Aucun certificat SSL trouvé sur les hôtes scannés"
else
    echo " "
    echo -ne "🖥️  ${BLANC}Hotes${RESET}"
    echo " "
    for hote in ${hotes_cert}; do
        echo " "
        echo -ne "${VERT}[+]${RESET} ${hote}"
        echo " "
        echo " "
    done
    echo -e "💾 Sauvegardé --> ${dir}/mET"
fi
