cp .bash_aliases ~/.bash_aliases
cp .bashrc ~/.bashrc
cp .p10k.zsh ~/.p10k.zsh
cp .zshrc ~/.zshrc
cp init.vim ~/.config/nvim/init.vim

mkdir ~/.config/nvim/config -p
cp ./nvim/config/*.vim ~/.config/nvim/config/
