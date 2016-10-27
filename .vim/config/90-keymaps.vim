let mapleader = "\<Space>"
let maplocalleader = ";"
set timeoutlen=1000
set ttimeoutlen=0

" Searching
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <leader>* :nohl<cr>

" Files
nnoremap <leader>f :Files<cr>
nnoremap <leader>F :Files %:p:h<cr>
nnoremap <leader>g :GFiles<cr>

" Buffers
nnoremap + :Buffers<cr>
nnoremap <bs><bs> :b#<cr>
nnoremap <leader>pc :pclose<cr>
nnoremap <Leader>q :Bdelete<cr>
nnoremap <Leader>q :Bdelete<cr>

" Other
nnoremap <F11> :set invpaste paste?<cr>
set pastetoggle=<F11>

" Tmux
function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction
nnoremap <leader>vp :VimuxPromptCommand<cr>
nnoremap <Leader>vi :VimuxInspectRunner<cr>
nnoremap <Leader>vl :VimuxRunLastCommand<cr>
nnoremap <Leader>vq :VimuxCloseRunner<cr>
nnoremap <Leader>vz :VimuxZoomRunner<cr>
vnoremap <LocalLeader>vs "vy :call VimuxSlime()<cr>"
