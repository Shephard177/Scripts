#!/bin/bash
# Main automation script
# By Shephard 10/07/2021

echo "Downloading Tools..."
./tools.sh
echo "Configuring Prompt..."
./prompt.sh
echo "Configuring Vim..."
#vim.sh
#echo "Configuring Tmux..."
#tmux.sh
echo "Done!"
