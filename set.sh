#! /bin/bash

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

a = "if has('vim_starting') \r   set runtimepath+=~/.vim/bundle/neobundle.vim/ \r endif \r call neobundle#rc(expand(\'~/.vim/bundle/\')) \r NeoBundleFetch \'Shougo/neobundle.vim\' \r filetype plugin on \r NeoBundleCheck"
 

echo a >> ~/.vimrc
a = "NeoBundle \'Shougo/unite.vim\' \r NeoBundle \'Shougo/unite.vim\' \r NeoBundle \'Shougo/neocomplcache.vim\' \r NeoBundle \'slimv.vim\' "
echo a >> ~/.vimrc
