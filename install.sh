#!/bin/bash
sudo apt update && sudo apt install zsh -y
chsh -s /bin/zsh
sudo chsh -s /bin/zsh root
wget -O Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
mkdir -p ~/.fonts
unzip Hack.zip -d ~/.fonts
rm Hack.zip
wget -O lsd.deb https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
sudo dpkg -i lsd.deb
rm lsd.deb
sudo apt install zsh-autosuggestions zsh-syntax-highlighting -y
sudo apt install bat -y
if [ ! -d "/usr/share/powerlevel10k" ]; then
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
        sudo mv powerlevel10k /usr/share
fi
if [ -f "~/.zshrc" ]; then
		cp ~/.zshrc ~/.zshrc_old
                echo ".zshrc file already exists, changed to .zshrc_old"
fi
if [ -f "~/.p10k.zsh" ]; then
		cp ~/.p10k.zsh ~/.p10k_old.zsh
                echo ".p10k.zsh file already exists, changed to .p10k_old.zsh"
fi
cp .zshrc ~/.zshrc
sudo cp .zshrc /root/.zshrc
cp .p10k.zsh ~/.p10k.zsh
sudo cp .p10k.zsh /root/.p10k.zsh
