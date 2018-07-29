Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

function s:InitPlugAirline()
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_buffers = 1
endfunction

augroup PlugAirline
  autocmd!
  autocmd User PlugInit :call s:InitPlugAirline()
augroup END
