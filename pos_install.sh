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
)


# atualização e downloads ---------------------------------
# apps disponíveis no apt ===========
echo 'Atualizando repositórios...'
sudo apt update -qq
sudo apt upgrade -yqq

echo 'Download dos aplicativos...'
sudo apt install -yqq ${apt_apps[@]}
sudo apt install -yqq ${apt_s76[@]}


# demais apps =======================
cd $(mktemp -d)  # vai para um diretório temporário

# R (Ubuntu e derivados)
echo 'Instalando R...'
sudo apt install -qq --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install -yqq --no-install-recommends r-base r-base-dev

# Rstudio (Ubuntu 22)
echo 'Instalando Rstudio...'
wget -O rstudio.deb https://download1.rstudio.org/electron/jammy/amd64/rstudio-2025.09.1-401-amd64.deb
sudo apt install -yqq ./rstudio.deb

# baixando fontes ===================
# Fira Code

# JetBrains Mono


# download, config e desabilitando extensões --------------
echo 'Configurando extensões...'

# baixando

# configurando

# desabilitando
for extension in ${gnome_extension_disable[@]}; do
    gnome-extensions disable "$extension"
done


echo 'Fim da Pós-Instalação.'
