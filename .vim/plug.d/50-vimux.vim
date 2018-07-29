Plug 'benmills/vimux'

function s:InitPlugin()
  function! VimuxSlime()
      call VimuxSendText(@v)
      call VimuxSendKeys("Enter")
  endfunction
  nnoremap <leader>vp :VimuxPromptCommand<cr>
  nnoremap <Leader>vi :VimuxInspectRunner<cr>
  nnoremap <Leader>vl :VimuxRunLastCommand<cr>
  nnoremap <Leader>vq :VimuxCloseRunner<cr>
  nnoremap <Leader>vz :VimuxZoomRunner<cr>
  nnoremap <Leader>vc :call VimuxRunCommand('cd ' . expand('%:p:h'))<cr>
  vnoremap <LocalLeader>vs "vy :call VimuxSlime()<cr>"
endfunction

augroup PlugVimux
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
