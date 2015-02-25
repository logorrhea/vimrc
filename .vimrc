execute pathogen#infect()
filetype off
" set runtimepath+=$GOROOT/misc/vim
syntax on
filetype plugin indent on
au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead Vagrantfile set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
colorscheme gruvbox
set background=dark
set guifont=Consolas:h16
map <C-n> :NERDTreeToggle<CR>
map <C-F> :NERDTreeFind
set tabstop=4
set shiftwidth=4
set expandtab
set number
set wildignore+=*/target/*,*.war,*/node_modules/*,*/bower_components/*
let g:ctrlp_root_markers = ['.classpath', 'application.properties', 'Gemfile', 'package.json']
let mapleader=","
set cc=80

" PHP Specific things
autocmd FileType php let b:surround_45 = "<?php \r ?>"
autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>
autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>

" Dash settings
let g:dash_map = {
    \ 'php' : 'drupal'
    \ }
