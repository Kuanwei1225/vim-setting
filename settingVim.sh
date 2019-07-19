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
git clone https://github.com/scrooloose/nerdtreet ~/.vim/bundle/nerdtree
mkdir tmptosetVim
cd tmptosetVim 
git clone https://github.com/tpope/vim-pathogen 
cp vim-pathogen/autoload ~/.vim/ -r
git clone https://github.com/rhysd/vim-clang-format
cp vim-clang-format/autoload/* ~/.vim/autoload/ -r
cp vim-clang-format/doc/* ~/.vim/doc/
cp vim-clang-format/plugin/* ~/.vim/plugin/
cd ..
rm tmptosetVim -r
git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/
git clone https://github.com/tacahiroy/ctrlp-funky ~/.vim/bundle/


