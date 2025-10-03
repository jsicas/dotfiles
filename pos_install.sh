#!/bin/bash

# script para automatizar a pós instalação do popOS 22

set -e  # exit on error

echo '========== Iniciando Pós-Intalação =========='

# definindo arrays de aplicativos para instalar, extensões para desabilitar...

# apps para instalar
apt_apps=(gnome-software )
apt_s76=(discord steam)  # depende dos empacotamentos da System76

# extensões para desabilitar
gnome_extension_disable=(
    ding@rastersoft.com     # retira icones do Desktop
    pop-shell@system76.com  # retira icone de tili windows 
)


# atualização e download de apps -------------------------
# apps disponíveis no apt
echo 'Atualizando repositórios...'
sudo apt update
sudo apt upgrade -y

echo 'Download dos aplicativos...'
sudo apt install ${apt_apps[@]} -y
sudo apt install ${apt_s76[@]} -y

# demais apps


# baixando e desabilitando extensões ----------------------
echo 'Configurando extensões...'

# baixando

# configurando

# desabilitando
for extension in ${gnome_extension_disable[@]}; do
    gnome-extensions disable "$extension"
done


echo 'Fim da Pós-Instalação.'
