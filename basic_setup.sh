sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install vim git curl

# install vimdot
curl "https://raw.githubusercontent.com/TomoyaFujita2016/mini-dotfiles/main/install_vim.sh" | sh

# install bashdot
curl "https://raw.githubusercontent.com/TomoyaFujita2016/mini-dotfiles/main/install_bash.sh" | sh
