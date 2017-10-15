if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set background=dark
let g:airline_theme = 'base16_default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1

set ignorecase
set list
set number
set splitbelow

let g:splice_initial_diff_grid = 1
let g:splice_initial_layout_grid = 1
