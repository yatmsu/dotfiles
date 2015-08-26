" NeoBundle
" $ mkdir -p ~/.vim/bundle
" $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif


" Let NeoBundle manage NeoBundle
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
" Bundles
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-haml'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'elzr/vim-json'

" Color Schemes
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'https://github.com/yatmsu/molokai.git'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/newspaper.vim'

call neobundle#end()

" Installation check
NeoBundleCheck

" colors
syntax on
filetype on
filetype plugin on
filetype indent on

colorscheme molokai

set display=lastline

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
" NERDTree
"------------------------------------
autocmd vimenter * NERDTree
let g:NERDTreeShowHidden=1 " 隠しファイルを表示する

"------------------------------------
" lightline
"------------------------------------
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ ['mode', 'paste'], ['fugitive', 'readonly', 'filename', 'modified'] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \ },
      \ 'separator': {'left': '⮀', 'right': '⮂'},
      \ 'subseparator': {'left': '⮁', 'right': '⮃'}
      \ }

function! MyFugitive()
  if exists('*fugitive#head')
    return '* ' . fugitive#head()
  endif
  return ''
endfunction

"------------------------------------
" vim-ruby
"------------------------------------
let ruby_operators = 1 " 演算子をハイライト
let ruby_space_errors = 1 " 行末のホワイトスペースをハイライト
let g:ruby_indent_access_modifier_style = 'indent'

"------------------------------------
" neocomplete.vim
"------------------------------------
let g:neocomplete#enable_at_startup = 1 " 起動時にneocompleteを実行
let g:neocomplete#enable_smart_case = 1 " 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_underbar_completion = 1 " '_'区切りの補完を有効化
let g:neocomplete#sources#syntax#min_keyword_length = 3 " シンタックスファイルの補完候補となるキーワードの長さ

"------------------------------------
" vim-indent-guides
"------------------------------------
let g:indentLine_color_term = 239
let g:indentLine_fileTypeExclude = ['help', 'nerdtree']

"------------------------------------
" vim-json
"------------------------------------
let g:vim_json_syntax_conceal = 0

"------------------------------------
" Key Mappings
"------------------------------------
" タブキーで補完
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
