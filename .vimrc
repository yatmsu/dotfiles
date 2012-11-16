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

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'taichouchou2/vim-rsense' " Rubyの補完
NeoBundle 'tpope/vim-rails'
NeoBundle 'git://github.com/scrooloose/nerdtree.git'
NeoBundle 'git://github.com/vim-ruby/vim-ruby.git'

filetype plugin indent on " プラグインを有効化
" NeoBundle end

"" colors
syntax on
"colorscheme railscasts

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
set directory=~/.vim/tmp " .swpファイルの保存場所

"" 20 command line editing
set history=10000


"" neocomplcache settings
" 補完ウィンドウの設定
let g:neocomplcache_enable_at_startup = 1
" タブキーで補完
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" ------------
" memo
" :options
