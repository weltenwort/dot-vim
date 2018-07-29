Plug 'tbabej/taskwiki'

function s:InitPlugin()
  let g:taskwiki_sort_order = 'status-,pri-,due+'
  let g:taskwiki_sort_orders = {
    \   'default': 'status+,end+,due+,pri-,project+'
    \ }
  let g:taskwiki_disable_concealcursor = 'yes'
endfunction

augroup PlugTaskWiki
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
