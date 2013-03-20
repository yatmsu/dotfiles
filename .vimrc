" NeoBundle start
" $ mkdir -p ~/.vim/bundle
" $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
set nocompatible
filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

" Color Scheme
"NeoBundle 'ujihisa/unite-colorscheme' " :Unite colorscheme
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'https://github.com/yatmsu/molokai.git'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/newspaper.vim'
" 遅延読み込み
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', { 'build' : { 'mac' : 'make -f make_mac.mak', 'unix' : 'make -f make_unix.mak', }, }
NeoBundle 'Shougo/neocomplcache', { 'autoload' : { 'insert' : 1, }}
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-haml'
NeoBundle 'scrooloose/nerdtree'
NeoBundleLazy 'vim-ruby/vim-ruby', { 'autoload' : { 'filetypes': ['ruby', 'eruby', 'haml'] } }

filetype plugin indent on " プラグインを有効化
" NeoBundle end

"" colors
syntax on
"colorscheme desert
colorscheme molokai

" 4 displaying text
set number " 行数表示

" 5 syntax, highlighting and spelling
set hlsearch " 検索結果をハイライト
set incsearch " インクリメンタルサーチ

"" 6 multiple windows
set laststatus=2 " 常に表示
set showcmd " 入力中のコマンドを表示

"" 11 messages and info
set ruler " 現在のカーソル位置を表示
set helplang=ja

"" 13 editing text
set showmatch "対応する括弧のハイライト表示する

"" 14 tabs and indenting
set tabstop=2 " <TAB>表示時の空白の量
set shiftwidth=2 " Vimが挿入するインデントの空白の量
set smarttab
set softtabstop=2 " <TAB>キー押下時の空白の量
set expandtab " タブをスペースに置き換える
set smartindent

"" 18 reading and writing files
set autoread " ファイル変更時にオートロード

"" 19 the swap file
set directory=~/ " .swpファイルの保存場所

"" 20 command line editing
set history=10000

"------------------------------------
" vim-ruby
"------------------------------------
" 演算子をハイライト
let ruby_operators = 1
" 行末のホワイトスペースをハイライト
let ruby_space_errors = 1
" ft-ruby-omni
"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1

"------------------------------------
" neocomplcache
"------------------------------------
let g:neocomplcache_enable_at_startup = 1 " 補完ウィンドウの設定
let g:neocomplcache_enable_smart_case = 1 " 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_enable_underbar_completion = 1 " '_'区切りの補完を有効化

"" 辞書の定義
"let g:neocomplcache_dictionary_filetype_lists = { 'default' : '' }
"if !exists('g:neocomplcache_keyword_patterns')
"  let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"
"if !exists('g:neocomplcache_omni_patterns')
"  let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

" AutoComplPop like behavior. 非推奨
"let g:neocomplcache_enable_auto_select = 1

"------------------------------------
" Key Mappings
"------------------------------------
imap <C-o> <C-x><C-o>
" タブキーで補完
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h> <BS>時に確実にポップアップを削除する。
"inoremap <expr><C-h> neocomplcache#smart_close_popup().”\<C-h>”
