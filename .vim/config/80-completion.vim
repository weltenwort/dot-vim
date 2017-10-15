set completeopt=menuone,preview,longest

let g:ycm_semantic_triggers = {
\   'elm' : ['.'],
\   'typescript' : ['.'],
\ }

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:SuperTabDefaultCompletionType = '<C-n>'
 
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

" let g:ycm_filetype_specific_completion_to_disable = {
" \   'javascript': 1,
" \}

augroup custom_completion
  " au InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
  au FileType javascript UltiSnipsAddFiletypes javascript-jsdoc
  au FileType javascript UltiSnipsAddFiletypes javascript-angular
  au FileType javascript UltiSnipsAddFiletypes javascript.es6.react
  au FileType javascript UltiSnipsAddFiletypes javascript-react
  au FileType ansible UltiSnipsAddFiletypes yaml
augroup END
