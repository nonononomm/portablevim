cpath=`pwd`
rm ~/.vimrc
rm -rf ~/.vim
ln -s $cpath/.vimrc ~/.vimrc
ln -s $cpath/.vim ~/.vim
