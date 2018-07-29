Plug 'ctrlpvim/ctrlp.vim'
Plug 'zeero/vim-ctrlp-help'
Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'DavidEGx/ctrlp-smarttabs'

function s:InitPlugin()
  let g:ctrlp_extensions = [
    \ 'undo', 'line', 'changes', 'help', 'modified'
    \ ]
  let g:ctrlp_match_window = 'results:100,min:10,max:10'
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
  let g:ctrlp_open_multiple_files = 'ij'
  let g:ctrlp_working_path_mode = 'rc'
  let g:ctrlp_open_new_file = 'r'

  if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i -l --nocolor --nogroup --ignore ''.git'' --ignore ''node_modules'' --hidden -g ""'
    let g:ctrlp_use_caching = 0
  endif

  nnoremap + :CtrlPBuffer<cr>
  nnoremap <leader>F :CtrlPCurFile<cr>
  nnoremap <leader>b :CtrlPBuffer<cr>
  nnoremap <leader>f :CtrlP<cr>
  nnoremap <leader>h :CtrlPHelp<cr>
  nnoremap <leader>m :CtrlPModified<cr>
  nnoremap <leader>t :CtrlPSmartTabs<cr>
endfunction

augroup PlugCtrlP
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
