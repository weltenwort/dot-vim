set completeopt=menuone,preview,longest

let g:ycm_semantic_triggers = {
\   'elm' : ['.'],
\ }

let g:UltiSnipsExpandTrigger = "<c-x><c-e>"
let g:UltiSnipsJumpForwardTrigger = "<c-x><c-n>"
let g:UltiSnipsJumpBackwardTrigger = "<c-x><c-p>"

augroup custom_completion
  au InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END
