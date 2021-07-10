# Updates system before installing Tools
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# Installing tools
sudo apt install $(cat tools.list | tr "\n" " ") -y