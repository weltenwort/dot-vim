Plug 'KabbAmine/zeavim.vim'

function s:InitPlugin()
  let g:zv_file_types = {
    \ 'typescript': 'javascript'
    \ }
endfunction

augroup PlugZeavim
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
