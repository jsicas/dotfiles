#!/bin/bash

# script para automatizar a pós instalação

# instalando aplicativos --------------------------------------------
# atualizando reposítorio e pacotes
sudo apt update
sudp apt upgrade -y

# loja
sudo apt install gnome-software

# instalando aplicativos
sudo apt install discord  # depende do empacotamento da system76
