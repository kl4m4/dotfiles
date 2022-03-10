set background=dark
colorscheme desert
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=2

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Command to quicky copy c function declaration, transform it
" into definition, and put in last register
command! Copydefinition :norm Ypf;xa {    0a}Vkkkd

" Line number/column in status bar"
set ruler
