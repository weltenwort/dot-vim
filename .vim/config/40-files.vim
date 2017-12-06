set backupcopy=yes

let g:ctrlp_extensions = [
  \ 'undo', 'line', 'changes', 'help', 'modified'
  \ ]
let g:ctrlp_match_window = 'results:100,min:10,max:10'

let g:ranger_map_keys = 0

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -i -l --nocolor --nogroup --ignore ''.git'' --ignore ''node_modules'' --hidden -g ""'
  let g:ctrlp_use_caching = 0
endif
