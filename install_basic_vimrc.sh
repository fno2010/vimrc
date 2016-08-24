cd ~/.vim
cat ~/.vim/vimrcs/basic.vim > ~/.vimrc
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
