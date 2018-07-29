Plug 'embear/vim-localvimrc'

function s:InitPlugin()
  let g:localvimrc_persistence_file = expand('~/.vim/localvimrc_whitelist')
  let g:localvimrc_persistent = 1  "store if answered in uppercase
endfunction

augroup PlugLocalrc
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
