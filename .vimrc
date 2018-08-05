" dein.vim install
" $ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" $ sh ./installer.sh ~/.vim/dein
" dein Scripts-----------------------------
if &compatible
  set nocompatible " Be iMproved
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  " Let dein manage dein
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('itchyny/lightline.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('tpope/vim-endwise')
  call dein#add('tpope/vim-rails')
  call dein#add('tpope/vim-haml')
  call dein#add('elixir-editors/vim-elixir')

  call dein#add('slim-template/vim-slim')
  call dein#add('thoughtbot/vim-rspec')
  call dein#add('Yggdroot/indentLine')
  call dein#add('chase/vim-ansible-yaml')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('elzr/vim-json')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('scrooloose/syntastic')
  call dein#add('zerowidth/vim-copy-as-rtf')
  call dein#add('lambdalisue/vim-gista')

  call dein#add('w0ng/vim-hybrid')
  call dein#add('https://github.com/yatmsu/molokai.git')
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('vim-scripts/newspaper.vim')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" colors
filetype on

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


" Auto Command
au BufNewFile,BufRead *.jbuilder :set filetype=ruby
au BufNewFile,BufRead *.dig* :set filetype=yaml

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
      \ }
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
"
"------------------------------------
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

"------------------------------------
" vim-gista
"------------------------------------
let g:gista#client#default_username = 'yatmsu'

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
