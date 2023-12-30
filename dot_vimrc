" install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'lambdalisue/vim-gista'
Plug 'zerowidth/vim-copy-as-rtf'
Plug 'tpope/vim-rails'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'thoughtbot/vim-rspec'
" ex) :CocInstall coc-solargraph
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-haml'
Plug 'elixir-editors/vim-elixir'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'editorconfig/editorconfig-vim'

Plug 'w0ng/vim-hybrid'
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'jpo/vim-railscasts-theme'
call plug#end()

syntax enable

colorscheme jellybeans

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

"" 空白文字可視化
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<,eol:↲

" Auto Command
au BufNewFile,BufRead *.jbuilder :set filetype=ruby
au BufNewFile,BufRead *.jb :set filetype=ruby
au BufNewFile,BufRead *.thor :set filetype=ruby
au BufNewFile,BufRead *.dig* :set filetype=yaml

"------------------------------------
" NERDTree
"------------------------------------
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " ファイル指定無しでvim起動時のみ実行
hi CursorLine cterm=NONE ctermfg=238 ctermbg=3
let g:NERDTreeShowHidden=1 " 隠しファイルを表示する

"------------------------------------
" lightline
"------------------------------------
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ ['mode', 'paste'], [ 'cocstatus', 'fugitive', 'readonly', 'filename', 'modified'] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
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
" vim-gista
"------------------------------------
let g:gista#client#default_username = 'yatmsu'

"------------------------------------
" vim-terraform
"------------------------------------
let g:terraform_align=1
let g:terraform_fold_sections=0
let g:terraform_fmt_on_save=1

"------------------------------------
" vim-indent-guides
"------------------------------------
let g:indentLine_color_term = 239
let g:indentLine_fileTypeExclude = ['help', 'nerdtree']

"------------------------------------
" vim-json
"------------------------------------
let g:vim_json_syntax_conceal = 0
