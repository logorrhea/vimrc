setlocal noexpandtab

let b:surround_{char2nr('-')} = "<?php \r ?>"
let b:surround_{char2nr('=')} = "<?php echo \r; ?>"
let b:surround_{char2nr('g')} = "$_GET['\r']"
let b:surround_{char2nr('p')} = "$_POST['\r']"

nnoremap <buffer> <C-M> :w!<CR>:!/usr/bin/php %<CR>
nnoremap <buffer> <C-L> :!/usr/bin/php -l %<CR>
