Plug 'jceb/vim-orgmode'

function s:InitPlugin()
endfunction

augroup PlugOrgmode
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
