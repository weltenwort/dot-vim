let g:task_default_prompt = ['due', 'project', 'priority', 'description', 'tag', 'depends', 'recur']
let g:task_info_vsplit = 1
let g:task_rc_override = 'rc.defaultwidth=140'

augroup taskwarrior
  autocmd!
  autocmd FileType taskreport set tw=140 nowrap nocursorline
augroup end
