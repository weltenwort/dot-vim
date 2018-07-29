Plug 'sjl/splice.vim'

function s:InitPlugSplice()
  let g:splice_initial_diff_grid = 1
  let g:splice_initial_layout_grid = 1
endfunction

augroup PlugSplice
  autocmd!
  autocmd User PlugInit :call s:InitPlugSplice()
augroup END
