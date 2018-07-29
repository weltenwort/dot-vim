Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/is.vim'

function s:InitPlugin()
  map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
  map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
  map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
  map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)
endfunction

augroup PlugAsterisk
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
