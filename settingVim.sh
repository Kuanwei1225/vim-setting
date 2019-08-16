#!/bin/bash
#
#	Auto setup my vim environment
#	but taglist cannot get from github, 
#	so it should download from website
#	https://sourceforge.net/projects/vim-taglist/
#	unzip it and put files under  ~/.vim/doc and ~/.vim/plugin
#

sudo apt install ctags cscope clang-format
# NERDTree
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
mkdir tmptosetVim
cd tmptosetVim 
git clone https://github.com/tpope/vim-pathogen 
cp vim-pathogen/autoload ~/.vim/ -r
git clone https://github.com/kana/vim-operator-user
cp vim-operator-user/autoload/operator ~/.vim -r
cp vim-operator-user/doc/ ~/.vim -r

git clone https://github.com/rhysd/vim-clang-format
cp vim-clang-format/autoload/* ~/.vim/autoload/ -r
cp vim-clang-format/doc/* ~/.vim/doc/
cp vim-clang-format/plugin ~/.vim/ -r
git clone https://github.com/kien/ctrlp.vim 
cp ctrlp.vim ~/.vim/bundle/ -r
git clone https://github.com/tacahiroy/ctrlp-funky 
cp ctrlp-funky ~/.vim/bundle/ -r

cd ..
sudo rm tmptosetVim -r
cp .vimrc ~
