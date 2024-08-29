#!/bin/bash

# Copier .bash_aliases et .scripts/ dans le répertoire personnel
cp ../config/.bash_aliases ~/.bash_aliases
cp -r ../config/.scripts ~/.scripts

# Ajouter la ligne pour sourcer .bash_aliases si elle n'est pas déjà présente
line_to_add="if [ -f ~/.bash_aliases ]; then\n    . ~/.bash_aliases\nfi"

# Vérifier si la ligne est déjà dans .bashrc, sinon l'ajouter
if ! grep -Fxq "$line_to_add" ~/.bashrc; then
    echo -e "\n$line_to_add" >> ~/.bashrc
fi

# Recharger .bashrc
source ~/.bashrc
