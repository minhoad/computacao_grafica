#!/bin/bash 
#avisando o terminal que o nosso script está escrito em bash

FILE="/tmp/out.$$"
GREP="/bin/grep"

#Utilizar o modo administrador para rodar o script
if [[ $EUID -ne 0 ]]; then
    echo "Esse script deve ser executado em modo administrador, portanto, "#sudo su" em seu terminal linux, e depois deve digitar sua senha" !>&2
    exit 1
fi
#comandos para instalar as bibliotecas que serão utilizadas
apt-get update -y
apt-get install freeglut3 -y
apt-get install freeglut3-dev -y
apt-get install g++ cmake -y
apt-get install g++ -y
apt-get install binutils-gold -y
apt-get install libglew-dev -y
apt-get install libglew1.5-dev libglm-dev -y
apt-get install libsoil-dev -y
apt-get install mesa-common-dev -y
glxinfo | grep OpenGl
