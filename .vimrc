"Vundleの設定
"installは以下のコマンドで
"git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

"Bundle 'rails.vim'
"Bundle 'vimproject'
Bundle 'tpope/vim-rails'
Bundle 'https://github.com/thinca/vim-ref.git'
Bundle 'git://github.com/scrooloose/nerdtree.git'

"vim-ruby
Bundle 'git://github.com/vim-ruby/vim-ruby.git'
"<C-i>でomni補完
imap <C-i> <C-x><C-o>


"" vimの設定
syntax on
filetype on
filetype indent on
filetype plugin on
set number

"" タブ幅の設定
" タブをスペースに置き換える
set expandtab
" <TAB>表示時の空白の量
set tabstop=2
" <TAB>キー押下時の空白の量
set softtabstop=2
" Vimが挿入するインデントの空白の量
set shiftwidth=2
