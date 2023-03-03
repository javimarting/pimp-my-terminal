#!/bin/bash
sudo apt update && sudo apt install zsh
sudo chsh -s /bin/zsh
wget -O Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
mkdir -p ~/.fonts
unzip Hack.zip -d ~/.fonts
sudo apt install lsd bat zsh-autosuggestions zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
sudo mv powerlevel10k /usr/share
[ -f "~/.zshrc" ] && cp "~/.zshrc" "~/.zshrc_old"
[ -f "~/.p10k.zsh" ] && cp "~/.p10k.zsh" "~/.p10k_old.zsh"
cp .zshrc "~/.zshrc"
cp .p10k.zsh "~/.p10k.zsh"