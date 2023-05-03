
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# TODO more linking
ln -sf $SCRIPT_DIR/dotfiles/.vimrc ~/.vimrc
ln -sf $SCRIPT_DIR/dotfiles/common_profile.sh ~/common_profile.sh
ln -sf $SCRIPT_DIR/dotfiles/.git-completion.bash ~/.git-completion.bash
ln -sf $SCRIPT_DIR/dotfiles/.git-prompt.sh ~/.git-prompt.sh


# Maybe don't use vundle anymore, we'll see..
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir $SCRIPT_DIR/vimrc && git clone git@github.com:dmsammons/vimrc.git $SCRIPT_DIR/vimrc

vim +PluginInstall +qall
