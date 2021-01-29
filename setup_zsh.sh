apt install zsh
chsh -s $(which zsh)
wget https://raw.githubusercontent.com/coallaoh/rc/master/.zshrc
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv .zshrc.pre-oh-my-zsh .zshrc
