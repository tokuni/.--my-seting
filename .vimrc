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
set nohlsearch
set cursorline

set vb t_vb=

set incsearch
set wildmenu wildmode=list:full


"Clojure 用
nnoremap <C-c> :Eval<CR>
colorscheme slate

" バックアップ関係

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

let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
	if &runtimepath !~# '/dein.vim'
if !isdirectory(s:dein_repo_dir)
	execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif


if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

"	call dein#add('Shougo/deoplete.nvim')"補完関連

	" プラグインリストを収めた TOML ファイル
	" 予め TOML ファイル（後述）を用意しておく
	let g:rc_dir    = expand('~/.vim/rc')
	let s:toml      = g:rc_dir . '/dein.toml'
	let s:lang      = g:rc_dir . '/lang.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

	" TOML を読み込み、キャッシュしておく
	call dein#load_toml(s:toml,      {'lazy': 0})
	call dein#load_toml(s:lang,      {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})
	" 設定終了
	call dein#end()
	call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
	call dein#install()
endif
filetype plugin indent on

"autocmd FileType coq highlight SentToCoq ctermbg=17 guibg=#000080
" Unit.vimの設定
""""""""""""""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>

"neocomplcache
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

nnoremap <silent><C-e> :NERDTreeToggle<CR>

"括弧の色つけの個数
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

vmap <silent> ,ss :VimShellSendString<CR>
" 選択中に,ss: 非同期で開いたインタプリタに選択行を評価させる
nnoremap <silent> ,ss <S-v>:VimShellSendString<CR>

"Python jedi-vim set
"
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'


