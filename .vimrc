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
    autocmd BufNewFile,BufRead *.module set filetype=php
    autocmd BufNewFile,BufRead *.install set filetype=php
    autocmd BufNewFile,BufRead *.inc set filetype=php
augroup END

if has("gui_running")
    "set background=dark
    "let g:seoul256_background = 235
    "colorscheme seoul256
    "colorscheme nefertiti
    set background=dark
    colorscheme gruvbox
else
    set background=dark
    colorscheme gruvbox
endif

" Mono/Unity Stuff
let g:Omnisharp_selector_ui = 'ctrlp'

set guifont=Consolas:h16
map <C-n> :NERDTreeToggle<CR>
map <C-F> :NERDTreeFind
set tabstop=4
set shiftwidth=4
set expandtab
set number
set wildignore+=*/target/*,*.war,*/node_modules/*,*/bower_components/*
let g:ctrlp_root_markers = ['.classpath', 'application.properties', 'Gemfile', 'package.json', 'Guardfile']
let mapleader=","
set colorcolumn=80

" PHP Specific things

" Dash settings
let g:dash_map = {
    \ 'php' : 'drupal'
    \ }

xnoremap <silent> - :<c-u>call <SID>Dasherize()<cr>
function! s:Dasherize()
  let reg = @@
  normal! gvy
  let @@ = tolower(substitute(@@, '\W\+', '-', 'g'))
  normal! gvp
  let @@ = reg
endfunction

set foldmethod=indent   "Fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1
