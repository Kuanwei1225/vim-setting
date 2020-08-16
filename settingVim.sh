#!/bin/bash
#
#	Auto setup my vim environment
#

sudo apt install ctags cscope clang-format curl
# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# NERDTree
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
mkdir tmptosetVim
cd tmptosetVim 
git clone https://github.com/kana/vim-operator-user
cp vim-operator-user/autoload/operator ~/.vim -r
cp vim-operator-user/doc/ ~/.vim -r

git clone https://github.com/yegappan/taglist.git
cp taglist/autoload/ ~/.vim/ -r

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
