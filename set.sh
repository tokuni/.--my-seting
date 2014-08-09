#mkdir -p ~/.vim/bundle
#git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

set autoindent
set ts=4
set number

if has('vim_starting')
        set runtimepath+=~/.vim/bundle/neobundle.vim/ 
endif 

call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim' 
filetype plugin on 
NeoBundleCheck
NeoBundle 'Shougo/unite.vim' 
NeoBundle 'Shougo/unite.vim' 
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'slimv.vim'
