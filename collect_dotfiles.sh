find . -maxdepth 1 -type f ! -name collect_dotfiles.sh ! -name distribute_dotfiles.sh -delete
rm -rf nvim

cp ~/.bash_aliases ./.bash_aliases
cp ~/.bashrc ./.bashrc
cp ~/.p10k.zsh ./.p10k.zsh
cp ~/.zshrc ./.zshrc
cp ~/.config/nvim/init.vim ./init.vim

mkdir nvim/config -p
cp ~/.config/nvim/config/*.vim ./nvim/config/
