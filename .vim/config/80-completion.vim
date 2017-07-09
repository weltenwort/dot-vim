set completeopt=menuone,preview,longest

let g:ycm_semantic_triggers = {
\   'elm' : ['.'],
\   'typescript' : ['.'],
\ }

let g:UltiSnipsExpandTrigger = "<c-x><c-e>"
let g:UltiSnipsJumpForwardTrigger = "<c-x><c-n>"
let g:UltiSnipsJumpBackwardTrigger = "<c-x><c-p>"

" let g:ycm_filetype_specific_completion_to_disable = {
" \   'javascript': 1,
" \}

augroup custom_completion
  au InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
  au FileType javascript UltiSnipsAddFiletypes javascript-jsdoc
  au FileType javascript UltiSnipsAddFiletypes javascript-angular
  au FileType javascript UltiSnipsAddFiletypes javascript.es6.react
  au FileType javascript UltiSnipsAddFiletypes javascript-react
augroup END
