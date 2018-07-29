Plug 'dylanaraps/wal.vim'

function s:InitPlugin()
  colorscheme wal
endfunction

augroup PlugWalTheme
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
