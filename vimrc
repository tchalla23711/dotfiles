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
set clipboard=unnamedlpus

map <F5> :!./%< <CR>
map <F8> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL -o %< % -O2 -Wno-unused-result <CR>
map <F9> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL -o %< % -Wno-unused-result -fsanitize=address -fsanitize=undefined -D__GLIBCXX_DEBUG -g <CR>



au BufNewFile *.cc 0r ~/cpp/tpl.cpp

