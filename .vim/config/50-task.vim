let g:task_default_prompt = ['due', 'project', 'priority', 'description', 'tag', 'depends', 'recur']
let g:task_info_vsplit = 1
let g:task_rc_override = 'rc.defaultwidth=140'

let g:tagbar_type_vimwiki = {
  \   'ctagstype':'vimwiki'
  \ , 'kinds':['h:header']
  \ , 'sro':'&&&'
  \ , 'kind2scope':{'h':'header'}
  \ , 'sort':0
  \ , 'ctagsbin':'~/.vim/config/utils/vwtags.py'
  \ , 'ctagsargs': 'default'
  \ }

augroup taskwarrior
  autocmd!
  autocmd FileType taskreport set tw=140 nowrap nocursorline
augroup end
