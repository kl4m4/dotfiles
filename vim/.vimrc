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

" Line number/column in status bar
set ruler

" Skrót do przeglądania buforów
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Plugins
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


" Initialize plugin system
call plug#end()

