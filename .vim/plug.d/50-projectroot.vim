Plug 'dbakker/vim-projectroot'

function s:InitPlugin()
  nnoremap <leader>R :ProjectRootCD<cr>
endfunction

augroup PlugProjectRoot
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
