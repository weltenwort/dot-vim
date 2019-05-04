Plug 'vim-scripts/utl.vim'

function s:InitPlugin()
endfunction

augroup PlugUtl
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
