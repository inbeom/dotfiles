set transparency=2

set guioptions=aAce

command! FR set filetype=ruby
set guifont=Monaco:h12

command! FR set filetype=ruby

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

if has("gui_macvim")
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
endif

set vb
set background=dark
colorscheme solarized
