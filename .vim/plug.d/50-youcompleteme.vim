Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

function s:InitPlugin()
  set completeopt=menuone,preview,longest

  let g:ycm_semantic_triggers = {
  \   'elm' : ['.'],
  \   'typescript' : ['.'],
  \   'javascript' : ['.'],
  \ }
  let g:ycm_add_preview_to_completeopt = 1
  let g:ycm_autoclose_preview_window_after_insertion = 1

  nnoremap <leader>cd :YcmCompleter GetDoc<cr>
  nnoremap <leader>cD :YcmCompleter GoToDefinition<cr>
  nnoremap <leader>ct :YcmCompleter GetType<cr>
  nnoremap <leader>cT :YcmCompleter GoToType<cr>
  nnoremap <leader>cr :YcmCompleter RefactorRename <c-r><c-w>
  nnoremap <leader>cR :YcmCompleter GoToReferences<cr>
  nnoremap <leader>ci :YcmCompleter OrganizeImports<cr>
  nnoremap <leader>cf :YcmCompleter FixIt<cr>
  nnoremap <leader>cl :YcmDiags<cr>
endfunction

augroup PlugYouCompleteMe
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
