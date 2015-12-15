set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-endwise'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'tsaleh/vim-matchit'

" Syntaxes
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'bbommarito/vim-slim'
Bundle 'toyamarinyon/vim-swift'
Bundle 'fatih/vim-go'
Bundle 'othree/yajs.vim'

" Color schemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'baeuml/summerfruit256.vim'

" Custom Settings
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set nowrap

set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8

filetype on
filetype indent on
filetype plugin on
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <Leader>n :NERDTreeToggle<CR>
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
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](.git|.hg|.svn|node_modules)$',
  \ }

set background=dark
colorscheme solarized

let g:syntastic_java_checker = 'checkstyle'

let not_loaded_cscope=1
