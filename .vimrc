"Vundleの設定
"installは以下のコマンドで
"git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

Bundle 'tpope/vim-rails'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/vim-ruby/vim-ruby.git'

"<C-i>でomni補完
imap <C-i> <C-x><C-o>

set directory=~/.vim/tmp

"" vimの設定
syntax on
filetype on
filetype indent on
filetype plugin on
set showmatch "対応する括弧のハイライト表示する
set autoindent
set number
set hlsearch " 検索結果をハイライト
set incsearch " インクリメンタルサーチ

"" タブ
set expandtab " タブをスペースに置き換える
set tabstop=2 " <TAB>表示時の空白の量
set softtabstop=2 " <TAB>キー押下時の空白の量
set shiftwidth=2 " Vimが挿入するインデントの空白の量
