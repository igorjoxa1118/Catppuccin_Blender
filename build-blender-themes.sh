#!/bin/bash

if [ "$(id -u)" = 0 ]; then
    echo "This script MUST NOT be run as root user."
    exit 1
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTCYAN='\033[1;36m'
ENDCOLOR="\e[0m"

destination1=""$HOME"/Загрузки/repository/ftp_repo/virOS_repo/x86_64/"

destiny=$destination1

search1="Catppuccin_Blender"
search=$search1


tput setaf 2
echo "#############################################################################################"
echo "#########        Let us build the package "$(basename `pwd`)
echo "#############################################################################################"
tput sgr0

updpkgsums

makepkg -s

echo -e "${GREEN}Moving pkg to " $destiny" ${ENDCOLOR}"
echo "#############################################################################################"
mv $search*pkg.tar.zst $destiny

echo "Cleaning up"
echo "#############################################################################################"
echo "deleting unnecessary folders"
echo "#############################################################################################"

rm -rf pkg src

echo "deleting unnecessary files"
echo "#############################################################################################"

rm -rf Catppuccin_Blender

tput setaf 8
echo "#############################################################################################"
echo "###################                       build done                   ######################"
echo "#############################################################################################"
tput sgr0
