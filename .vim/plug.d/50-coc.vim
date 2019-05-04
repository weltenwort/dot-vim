Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

function s:InitPlugin()
  " use <tab> for trigger completion and navigate to next complete item
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  " Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
  " Coc only does snippet and additional edit on confirm.
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  " Use <c-space> for trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  nmap <silent> <leader>cd <Plug>(coc-diagnostic-info)
  nmap <silent> <leader>cD <Plug>(coc-definition)
  nmap <silent> <leader>ct :call CocAction('doHover')<cr>
  nmap <silent> <leader>cT <Plug>(coc-type-definition)
  nmap <silent> <leader>cr :call CocAction('rename')<cr>
  nmap <silent> <leader>cR <Plug>(coc-references)
  nmap <silent> <leader>cF <Plug>(coc-format)
  vmap <silent> <leader>cF <Plug>(coc-format-selected)
  nmap <silent> <leader>ca <Plug>(coc-codeaction)
  nmap <silent> <leader>cA <Plug>(coc-codeaction-selected)
  vmap <silent> <leader>cA <Plug>(coc-codeaction-selected)
  nmap <silent> <leader>cj <Plug>(coc-diagnostic-next)
  nmap <silent> <leader>ck <Plug>(coc-diagnostic-prev)
  nmap <silent> <leader>co :CocList outline<cr>
  nmap <silent> <leader>cl :CocList diagnostics<cr>
  nmap <silent> <leader>cs :CocList --interactive symbols<cr>
  nmap <silent> <leader>cL :CocList commands<cr>

  " nnoremap <leader>cd :YcmCompleter GetDoc<cr>
  " nnoremap <leader>cD :YcmCompleter GoToDefinition<cr>
  " nnoremap <leader>ct :YcmCompleter GetType<cr>
  " nnoremap <leader>cT :YcmCompleter GoToType<cr>
  " nnoremap <leader>cr :YcmCompleter RefactorRename <c-r><c-w>
  " nnoremap <leader>cR :YcmCompleter GoToReferences<cr>
  " nnoremap <leader>ci :YcmCompleter OrganizeImports<cr>
  " nnoremap <leader>cf :YcmCompleter FixIt<cr>
  " nnoremap <leader>cl :YcmDiags<cr>

  let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
  let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
endfunction

augroup PlugCoc
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()

  autocmd CompleteDone * if pumvisible() == 0 | pclose | endif
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  autocmd FileType typescript,javascript,json setl formatexpr=CocAction('formatSelected')
  autocmd FileType javascript,javascript.jsx,typescript,typescript.jsx nmap <silent><buffer> <leader>cf :CocCommand eslint.executeAutofix<cr>
  " autocmd FileType javascript,javascript.tsx,typescript,typescript.tsx nmap <silent><buffer> <leader>cF :CocCommand prettier.formatFile<cr>
augroup END
