#!bin/bash
pkg update -y
pkg upgrade -y

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

echo $YELLOW"Usted decea actualizar el bot? [s/n]"
read -p "> " opts

if [ $opts = "s" ]; then

clear
echo $YELLOW"Atualizando el bot, espere..."
git clone https://github.com/KingHackYT/KingHackBotOFC > /dev/null 2> /dev/null

cd KHBot
cp -r * ..
cd ..
rm -rf KHBot
npm i

clear
echo $GREEN"Bot actualizado con exito!!"

elif [ $opts = "n"]; then
    clear
    echo $RED"Actualizacion cancelada"
    exit
fi
