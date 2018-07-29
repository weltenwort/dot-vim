Plug 'jreybert/vimagit'

function s:InitPlugin()
endfunction

augroup PlugVimagit
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
