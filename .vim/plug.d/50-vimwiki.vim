Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

function s:InitPlugin()
  let g:vimwiki_list = [
    \ {'path': '~/Documents/notes', 'syntax': 'default', 'ext': '.wiki', 'auto_toc': 1, 'list_margin': 0},
    \ ]
  let g:vimwiki_dir_link = 'index'

  nnoremap <leader>wf :VimwikiFollowLink<cr>
endfunction

augroup PlugVimWiki
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
