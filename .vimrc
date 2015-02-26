execute pathogen#infect()
filetype off
" set runtimepath+=$GOROOT/misc/vim
syntax on
filetype plugin indent on

augroup vimrc_filetype
    autocmd!
    autocmd BufNewFile,BufRead *.hbs set filetype=html
    autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
    autocmd BufNewFile,BufRead Guardfile set filetype=ruby
augroup END

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
set colorcolumn=80

" PHP Specific things

" Dash settings
let g:dash_map = {
    \ 'php' : 'drupal'
    \ }
