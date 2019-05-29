mkdir ~/setup

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git@github.com:dmsammons/vimrc.git ~/setup/vimrc

ln -s ~/setup/vimrc/.vimrc ~/.vimrc

vim +PluginInstall +qall
