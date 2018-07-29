Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

function s:InitPlugin()
  let g:UltiSnipsExpandTrigger = '<c-x><c-x>'
  let g:UltiSnipsJumpForwardTrigger = '<tab>'
  let g:UltiSnipsJumpBackwardTrigger = '<c-tab>'

  augroup CustomUltisnips
    autocmd!
    autocmd FileType javascript UltiSnipsAddFiletypes javascript-jsdoc
    autocmd FileType javascript UltiSnipsAddFiletypes javascript-angular
    autocmd FileType javascript UltiSnipsAddFiletypes javascript.es6.react
    autocmd FileType javascript UltiSnipsAddFiletypes javascript-react
    autocmd FileType ansible UltiSnipsAddFiletypes yaml
  augroup END
endfunction

augroup PlugUltisnips
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
