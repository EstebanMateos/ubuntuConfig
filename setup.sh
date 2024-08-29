#!/bin/bash

# Exécution des scripts d'installation
echo "Installation des paquets apt et snap..."
bash ./scripts/installAptSnap.sh

echo "Installation de Docker..."
bash ./scripts/installDocker.sh

echo "Configuration de bashrc..."
bash ./scripts/installbashrc.sh

echo "Configuration de VSCode..."
bash ./scripts/configureVSCode.sh

echo "Définition des applications par défaut..."
bash ./scripts/installDefault.sh

echo "Configuration complète terminée."
