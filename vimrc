
set number
set expandtab
set smarttab
set smartindent
set cindent
set autoindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set mouse=a
set clipboard=unnamedplus
set background=dark

syntax enable

colo gruvbox

" cpp
map <F5> :!./%< <CR>
map <F8> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL -o %< % -O2 -Wno-unused-result <CR>
map <F9> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL -o %< % -Wno-unused-result -fsanitize=address -fsanitize=undefined -D__GLIBCXX_DEBUG -g <CR>


map <C-t> :NERDTreeToggle<CR>
map <C-Left> :tabprev <CR>
map <C-Right> :tabnext <CR>
map <C-n> :tabnew <CR>
map <C-_> gcc 

au filetype cpp setlocal commentstring=//\ %s
au BufWritePre *.cpp :ruby CppAutoInclude::process

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'quark-zju/vim-cpp-auto-include'
call vundle#end()
filetype plugin indent on
