Plug 'w0rp/ale'

function s:InitPlugin()
  let g:ale_linters = {
      \ 'typescript': ['tslint', 'prettier'],
      \ 'javascript': ['eslint', 'prettier'],
      \ }
  let g:ale_fixers = {
      \ 'css': ['prettier'],
      \ 'scss': ['prettier'],
      \ 'javascript': ['eslint', 'prettier'],
      \ 'json': ['prettier'],
      \ 'typescript': ['tslint'],
      \ 'sh': ['shfmt']
      \ }
  let g:ale_sh_shfmt_options = '-i 2'

  nmap <leader># <Plug>(ale_fix)
endfunction

augroup PlugAle
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
