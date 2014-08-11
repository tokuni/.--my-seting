"mkdir -p ~/.vim/bundle
"git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

set autoindent
set ts=4

set nocompatible

set fileformats=unix,dos,mac


                                                                                                                       
set expandtab
set visualbell
set number
filetype indent off 
set smartcase
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=0
set writebackup
set title
set showcmd
set showmatch
syntax on

set vb t_vb=

colorscheme slate

"----------------------------------------------------
" バックアップ関係
"----------------------------------------------------
" ファイルの上書きの前にバックアップを作る
" (ただし、backupがオンでない限り、バックアップは上書きに成功した後削除される)



" 全角スペースの表示

highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=lightblue
match ZenkakuSpace /　/
highlight tab ctermfg=yellow
set list
set listchars=tab:^\ ,trail:~
highlight SpecialKey cterm=underline ctermfg=yellow

" 行を強調表示
set cursorline
" 列を強調表示
set cursorcolumn


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

