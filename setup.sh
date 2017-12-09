cpath=`pwd`
rm ~/.vimrc
rm -rf ~/.vim
echo -n "PORTABLEVIM=`pwd`" >> $cpath/.bash_profile
ln -s $cpath/.vimrc ~/.vimrc
ln -s $cpath/.vim ~/.vim
ln -s $cpath/.iterm2 ~/.iterm2
ln -s $cpath/.iterm2_shell_integration.bash ~/.iterm2_shell_integration.bash
ln -s $cpath/.bash_profile ~/.bash_profile
brew install wget
if [ `which ctags` == "/usr/bin/ctags" ]; then
brew install ctags
fi
git config --global user.name "Linh Nguyen"
git config --global user.email lnguyen639@gmail.com
