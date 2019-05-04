Plug 'luochen1990/rainbow'

function s:InitPlugin()
  let g:rainbow_active = 1
endfunction

augroup PlugRainbow
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
