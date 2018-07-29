Plug 'editorconfig/editorconfig-vim'

function s:InitPlugin()
  let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
endfunction

augroup PlugEditorConfig
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
