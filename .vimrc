"----------------------------------------
" plugin - NeoBundle
" $ mkdir -p ~/.vim/bundle
" $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"----------------------------------------
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

filetype plugin indent on
" end NeoBundle

"" vimの設定
syntax on
set directory=~/.vim/tmp " .swpファイルの保存場所
set showmatch "対応する括弧のハイライト表示する
set autoindent
set number
set hlsearch " 検索結果をハイライト
set incsearch " インクリメンタルサーチ
"" statusline
set laststatus=2
set ruler " 行列の表示など

"" タブ
set expandtab " タブをスペースに置き換える
set tabstop=2 " <TAB>表示時の空白の量
set softtabstop=2 " <TAB>キー押下時の空白の量
set shiftwidth=2 " Vimが挿入するインデントの空白の量

"" neocomplcache
" 補完ウィンドウの設定
let g:neocomplcache_enable_at_startup = 1
" タブキーで補完
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
