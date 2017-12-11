cpath=`pwd`
grep "PORTABLEVIM" $cpath/.bash_profile || ( echo -n "PORTABLEVIM=`pwd`" >> $cpath/.bash_profile )

if [ "$OSTYPE" == "darwin16" ]; then
    gumma_install () {
        brew install $1
    }
fi

rm -f ~/.vimrc
rm -rf ~/.vim
echo "Plugin: YouCompleteMe needs to be compiled. Go to its website to get instructions"

[ -L ~/.vimrc ] || ln -s $cpath/.vimrc ~/.vimrc
[ -L ~/.vim ] || ln -s $cpath/.vim ~/.vim
[ -L ~/.iterm2 ] || ln -s $cpath/.iterm2 ~/.iterm2
[ -L ~/.iterm2_shell_integration.bash ] || ln -s $cpath/.iterm2_shell_integration.bash ~/.iterm2_shell_integration.bash
[ -L ~/.bash_profile ] || ln -s $cpath/.bash_profile ~/.bash_profile
[ `which wget` ] || gumma_install wget
[ `which ctags` == "/usr/bin/ctags" ] && gumma_install ctags
git config --global user.name "Linh Nguyen"
git config --global user.email lnguyen639@gmail.com
