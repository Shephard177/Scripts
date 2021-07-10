#!/bin/bash
# Main automation script
# By Shephard 10/07/2021

# Updates system before installing Tools
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# Installs tools from tools.list
echo "Downloading Tools..."
sudo apt install $(cat tools.list | tr "\n" " ") -y

# Make a backup of the .bashrc file
echo "Configuring Prompt..."
cp ~/.bashrc ~/.bashrc.bak
# Customize bash prompt
echo 'export PS1="-[\[$(tput sgr0)\]\[\033[38;5;10m\]\d\[$(tput sgr0)\]-\[$(tput sgr0)\]\[\033[38;5;10m\]\t\[$(tput sgr0)\]]-[\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;196m\]\h\[$(tput sgr0)\]]-\n-[\[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"' >> ~/.bashrc

# Customize vim
echo "Configuring Vim..."

# Customize Tmux
echo "Configuring Tmux..."

echo "Done!"
