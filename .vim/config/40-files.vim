set backupcopy=yes

let g:ctrlp_extensions = [
  \ 'undo', 'line', 'changes', 'help', 'modified'
  \ ]
let g:ctrlp_match_window = 'results:100,min:10,max:10'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_open_multiple_files = 'ij'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_open_new_file = 'r'

let g:ranger_map_keys = 0

let g:localvimrc_persistence_file = expand('~/.vim/localvimrc_whitelist')
let g:localvimrc_persistent = 1  "store if answered in uppercase

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -i -l --nocolor --nogroup --ignore ''.git'' --ignore ''node_modules'' --hidden -g ""'
  let g:ctrlp_use_caching = 0
endif
