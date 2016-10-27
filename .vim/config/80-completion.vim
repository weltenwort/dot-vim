set completeopt=menuone,preview,longest

let g:ycm_semantic_triggers = {
\   'elm' : ['.'],
\ }

augroup custom_completion
  au InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END
