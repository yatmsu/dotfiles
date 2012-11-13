"----------------------------------------
" plugin - NeoBundle
" $ mkdir -p ~/.vim/bundle
" $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"----------------------------------------
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'tpope/vim-rails'
NeoBundle 'git://github.com/scrooloose/nerdtree.git'
NeoBundle 'git://github.com/vim-ruby/vim-ruby.git'

filetype plugin indent on

"<C-i>でomni補完
imap <C-i> <C-x><C-o>

"" vimの設定
syntax on
filetype on
filetype indent on
filetype plugin on
set directory=~/.vim/tmp " .swpファイルの保存場所
set showmatch "対応する括弧のハイライト表示する
set autoindent
set number
set hlsearch " 検索結果をハイライト
set incsearch " インクリメンタルサーチ
set paste
"" statusline
set laststatus=2
set ruler " 行列の表示など

"" タブ
set expandtab " タブをスペースに置き換える
set tabstop=2 " <TAB>表示時の空白の量
set softtabstop=2 " <TAB>キー押下時の空白の量
set shiftwidth=2 " Vimが挿入するインデントの空白の量
