#!/bin/bash

# criando links simbólicos
ln -sf ~/.dotfiles/.XCompose ~/.XCompose          # atalhos de teclado personalizados
ln -sf ~/.dotfiles/.vimrc ~/.vimrc                # shortcurts personalizados no vim
#ln -sf ~/.dotfiles/.bashrc ~/.bashrc              # executa sempre que o terminal abre
#ln -sf ~/.dotfiles/.profile ~/.profile            # executado no login quando .bash_profile não existir
#ln -sf ~/.dotfiles/.bash_profile ~/.bash_profile  # executando no login

# configurações do Rstudio
if command -v rstudio &> /dev/null; then
    ln -f ~/.dotfiles/rstudio-prefs.json ~/.config/rstudio/rstudio-prefs.json
fi
