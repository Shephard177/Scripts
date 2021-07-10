

echo "Downloading Tools..."
./tools.sh
echo "Configuring Prompt..."
./prompt.sh
echo "Configuring Vim..."
vim.sh
echo "Configuring Tmux..."
tmux.sh
echo "Done!"


