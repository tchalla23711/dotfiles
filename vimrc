set number
set expandtab
set smarttab
set smartindent
set cindent
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set nocompatible
set autoread
set autowrite
set mouse=a
set clipboard=unnamedplus

set guifont=Monospace\ 12
set guioptions-=T
set guioptions-=M

set background=dark

syntax enable

colo gruvbox

" cpp
au filetype cpp map <F5> :!./%< <CR>
au filetype cpp map <F8> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL -o %< % -O2 -Wno-unused-result <CR>
au filetype cpp map <F9> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL -o %< % -Wno-unused-result -fsanitize=address -fsanitize=undefined -D__GLIBCXX_DEBUG -g <CR>





map <C-Left> :tabprev <CR>
map <C-Right> :tabnext <CR>
map <C-n> :tabnew <CR>
map <F4> :wqa <CR>
map <C-_> gcc 


au BufNewFile *.cc 0r ~/cpp/tpl.cpp
au filetype cpp setlocal commentstring=//\ %s


map <C-t> :NERDTreeToggle<CR>



set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
call vundle#end()
filetype plugin indent on
