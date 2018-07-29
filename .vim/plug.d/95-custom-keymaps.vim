set pastetoggle=<F11>

" Quickly toggle paste mode
nnoremap <F11> :set invpaste paste?<cr>

" Select last paste
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Hide highlights
nnoremap <leader>* :nohl<cr>

" Switch between recent buffers
nnoremap <bs><bs> :b#<cr>

" Format file using equalprg
nnoremap <leader>af gggqG``
