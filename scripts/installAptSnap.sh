#!/bin/bash

# List apt packages
apt_packages=(
    "exa"
    "micro"
    "bat"
    "tilix"
    "thefuck"
    "firefox"
)

# List snap packages
snap_packages=(
    "code --classic"
    "spotify"
)

# Update apt
sudo apt update

# Install apt
echo "Installation of packets using apt..."
for package in "${apt_packages[@]}"; do
    if dpkg -l | grep -q "^ii  $package "; then
        echo "$package already installed."
    else
        echo "Installation of $package..."
        sudo apt install -y "$package"
    fi
done

# Install snap
echo "Installation of packets using snap..."
for package in "${snap_packages[@]}"; do
    snap_name=$(echo $package | awk '{print $1}')
    if snap list | grep -q "^$snap_name "; then
        echo "$snap_name already installed."
    else
        echo "Installation of $package..."
        sudo snap install $package
    fi
done

sudo apt autoremove
echo "Done."
