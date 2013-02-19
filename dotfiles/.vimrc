execute pathogen#infect()
syntax on

set ls=2
set ignorecase
set number
set ruler
set showmatch
set mat=2
filetype plugin on
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.md set filetype=mkd

hi StatusLine ctermfg=0 ctermbg=2
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
