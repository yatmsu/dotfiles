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

" 遅延読み込み
NeoBundle 'Shougo/vimproc', { 'build' : { 'mac' : 'make -f make_mac.mak', 'unix' : 'make -f make_unix.mak', }, }
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache', { 'autoload' : { 'insert' : 1, }}
"NeoBundle 'Shougo/neocomplcache-rsense', { 'depends': 'Shougo/neocomplcache', 'autoload': { 'filetypes': 'ruby' }}
"NeoBundle 'taichouchou2/rsense-0.3', { 'build' : { 'mac': 'ruby etc/config.rb > ~/.rsense', 'unix': 'ruby etc/config.rb > ~/.rsense', } }
NeoBundle 'tpope/vim-rails'
NeoBundle 'git://github.com/vim-ruby/vim-ruby.git'
NeoBundle 'git://github.com/scrooloose/nerdtree.git'

filetype plugin indent on " プラグインを有効化
" NeoBundle end

"" colors
syntax on
colorscheme desert

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
" neocomplcache
"------------------------------------
set infercase
" 補完ウィンドウの設定
let g:neocomplcache_enable_at_startup = 1
" タブキーで補完
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
