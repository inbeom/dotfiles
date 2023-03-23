set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-endwise'
" Bundle 'scrooloose/syntastic'
Bundle 'w0rp/ale'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'tmhedberg/matchit'

" Syntaxes
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'toyamarinyon/vim-swift'
Bundle 'fatih/vim-go'
Bundle 'othree/yajs.vim'
Bundle 'wavded/vim-stylus'
Bundle 'leafgarland/typescript-vim'
Bundle 'jparise/vim-graphql'
" Bundle 'Quramy/tsuquyomi'

" Color schemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'baeuml/summerfruit256.vim'

call vundle#end()

filetype on
filetype indent on
filetype plugin on

" Custom Settings
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set nowrap

set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <Leader>t :NERDTreeToggle<CR>
map <Leader>z :ZoomWin<CR>

set list
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r
  set statusline+=Line:%l/%L[%p%%]
  set statusline+=Col:%v
  set statusline+=Buf:#%n
  set statusline+=[%b][0x%B]
endif

map <Down> gj
map <Up> gk

" CtrlP
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 10
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = {
  \   'dir': '\v[\/](.git|.hg|.svn|node_modules|tmp)$',
  \ }

set background=dark
colorscheme solarized

let g:syntastic_java_checker = 'checkstyle'
let g:jsx_ext_required = 0

let g:ale_completion_enabled = 0
let g:ale_fix_on_save = 1
let g:ale_fixers = {
  \   'javascript': [
  \     'eslint', 'prettier',
  \   ],
  \   'javascriptreact': [
  \     'eslint', 'prettier',
  \   ],
  \   'typescript': [
  \     'eslint', 'prettier',
  \   ],
  \   'typescriptreact': [
  \     'eslint', 'prettier',
  \   ],
  \   'json': [
  \     'eslint', 'prettier',
  \   ],
  \}

let g:ale_linters = {
  \   'typescript': [
  \     'eslint', 'tsserver', 'prettier',
  \   ],
  \}

let g:ale_javascript_prettier_use_local_config = 1

let not_loaded_cscope=1

let $PATH=$PATH . ':/Users/inbeom/.nvm/versions/node/v18.11.0/bin'

set exrc
set secure
