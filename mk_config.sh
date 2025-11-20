#!/bin/bash

# criando links simbólicos
ln -sf ~/.dotfiles/.XCompose ~/.XCompose          # atalhos de teclado personalizados
ln -sf ~/.dotfiles/.vimrc ~/.vimrc                # shortcurts personalizados no vim
ln -sf ~/.dotfiles/.bash_profile ~/.bash_profile  # executa no login
ln -sf ~/.dotfiles/.bashrc ~/.bashrc              # executa sempre que o terminal abre
ln -sf ~/.dotfiles/starship.toml ~/.config/starship.toml

# configurações do Rstudio
if command -v rstudio &> /dev/null; then
    ln -f ~/.dotfiles/rstudio-prefs.json ~/.config/rstudio/rstudio-prefs.json
fi
