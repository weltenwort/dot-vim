let g:vimwiki_list = [
  \ {'path': '~/Documents/notes', 'syntax': 'default', 'ext': '.wiki', 'auto_toc': 1, 'list_margin': 0},
  \ {'path': '~/Documents/Notes', 'syntax': 'markdown', 'ext': '.wiki.md', 'auto_toc': 1}
  \ ]
let g:vimwiki_dir_link = 'index'

let g:taskwiki_sort_order = 'status-,pri-,due+'
let g:taskwiki_sort_orders = {
  \   'default': 'status+,end+,due+,pri-,project+'
  \ }
let g:taskwiki_disable_concealcursor = 'yes'
