#!/bin/bash
sudo apt update && sudo apt install zsh
chsh -s /bin/zsh
wget -O Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
mkdir -p ~/.fonts
unzip Hack.zip -d ~/.fonts
rm Hack.zip
wget -O lsd.deb https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
sudo dpkg -i lsd.deb
rm lsd.deb
sudo apt install zsh-autosuggestions zsh-syntax-highlighting -y
sudo apt install bat
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
sudo mv powerlevel10k /usr/share
if [ -f "~/.zshrc" ]; then
		cp "~/.zshrc" "~/.zshrc_old"
fi
if [ -f "~/.p10k.zsh" ]; then
		cp "~/.p10k.zsh" "~/.p10k_old.zsh"
fi
cp .zshrc "~/.zshrc"
cp .p10k.zsh "~/.p10k.zsh"
