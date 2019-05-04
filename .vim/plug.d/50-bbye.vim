Plug 'moll/vim-bbye'

function s:InitPlugin()
  nnoremap <Leader>q :Bdelete<cr>
endfunction

augroup PlugBBye
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
