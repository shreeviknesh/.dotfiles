find . -maxdepth 1 -type f ! -name collect_dotfiles.sh ! -name distribute_dotfiles.sh -delete
rm -rf .vim

cp ~/.bash_aliases ./.bash_aliases
cp ~/.bashrc ./.bashrc
cp ~/.p10k.zsh ./.p10k.zsh
cp ~/.vimrc ./.vimrc
cp ~/.zshrc ./.zshrc

mkdir .vim/config/ -p
cp ~/.vim/config/*.vim ./.vim/config/
