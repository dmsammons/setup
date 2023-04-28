mkdir ~/setup

# Maybe don't use vundle anymore, we'll see..
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git@github.com:dmsammons/vimrc.git ~/setup/vimrc

# TODO more linking
ln -s ~/setup/vimrc/.vimrc ~/.vimrc

vim +PluginInstall +qall
