#!/bin/bash

# Documentation et formatage Python
code --install-extension njpwerner.autodocstring  # autoDocstring - Python Docstring Generator
code --install-extension ms-python.black-formatter  # Black Formatter
code --install-extension ms-python.python  # Python
code --install-extension ms-python.pylance  # Pylance
code --install-extension ms-python.debugpy  # Python Debugger
code --install-extension charliermarsh.ruff  # Ruff

# C/C++ et outils associés
code --install-extension ms-vscode.cpptools  # C/C++
code --install-extension ms-vscode.cpptools-extension-pack  # C/C++ Extension Pack
code --install-extension ms-vscode.cpptools-themes  # C/C++ Themes
code --install-extension xaver.clang-format  # Clang-Format
code --install-extension twxs.cmake  # CMake
code --install-extension ms-vscode.cmake-tools  # CMake Tools

# Conteneurs et Docker
code --install-extension ms-vscode-remote.remote-containers  # Dev Containers
code --install-extension ms-azuretools.vscode-docker  # Docker

# Documentation
code --install-extension cschlosser.doxdocgen  # Doxygen Documentation Generator
code --install-extension yzane.markdown-pdf  # Markdown PDF
code --install-extension davidanson.vscode-markdownlint  # markdownlint

# Fichiers CSV et outils divers
code --install-extension mechatroner.rainbow-csv  # Rainbow CSV

# Remote SSH
code --install-extension ms-vscode-remote.remote-ssh  # Remote - SSH
code --install-extension ms-vscode-remote.remote-ssh-edit  # Remote - SSH: Editing Configuration Files
code --install-extension ms-vscode-remote.remote-explorer  # Remote Explorer

SETTINGS_PATH="$HOME/.config/Code/User/settings.json"
mkdir -p "$(dirname "$SETTINGS_PATH")"
cp ../config/vscodesettings.json "$SETTINGS_PATH"

SNIPPETS_PATH="$HOME/.config/Code/User/snippets/python.json"
mkdir -p "$(dirname "$SNIPPETS_PATH")"
cp ../config/python.json "$SNIPPETS_PATH"
