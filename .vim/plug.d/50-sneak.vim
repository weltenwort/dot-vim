Plug 'justinmk/vim-sneak'

function s:InitPlugin()
  let g:sneak#label = 1

  map f <Plug>Sneak_f
  map F <Plug>Sneak_F
  map t <Plug>Sneak_t
  map T <Plug>Sneak_T
endfunction

augroup PlugSneak
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
