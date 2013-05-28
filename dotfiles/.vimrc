execute pathogen#infect()
syntax on
set encoding=utf-8

set ls=2
set ignorecase
set number
set ruler
set showmatch
set mat=2
filetype plugin on
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.md set filetype=mkd
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
