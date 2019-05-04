Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

function s:InitPlugin()
endfunction

augroup PlugFzf
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
