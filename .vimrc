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

"" view
set number " 行数表示

"" search
set hlsearch " 検索結果をハイライト
set incsearch " インクリメンタルサーチ
set history=10000

"" edit
set showmatch "対応する括弧のハイライト表示する
set autoindent

"" status line
set laststatus=2 " 常に表示
set showcmd " 入力中のコマンドを表示
set ruler " ルーラー表示

"" tab
set expandtab " タブをスペースに置き換える
set tabstop=2 " <TAB>表示時の空白の量
set softtabstop=2 " <TAB>キー押下時の空白の量
set shiftwidth=2 " Vimが挿入するインデントの空白の量

"" other
set autoread " ファイル変更時にオートロード
set directory=~/.vim/tmp " .swpファイルの保存場所

"" neocomplcache settings
" 補完ウィンドウの設定
let g:neocomplcache_enable_at_startup = 1
" タブキーで補完
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
