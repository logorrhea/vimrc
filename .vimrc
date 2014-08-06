execute pathogen#infect('lib/{}')
filetype off
" set runtimepath+=$GOROOT/misc/vim
syntax on
filetype plugin indent on
colorscheme gruvbox
set background=dark
set guifont=Consolas:h16
map <C-n> :NERDTreeToggle<CR>
map <C-F> :NERDTreeFind
set tabstop=4
set shiftwidth=4
set expandtab
set number
set wildignore+=*/target/*,*.war
let g:ctrlp_root_markers = ['.classpath', 'application.properties', 'Gemfile', 'package.json']
let mapleader=","
set cc=80
