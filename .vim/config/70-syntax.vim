let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['coffee', 'css', 'javascript', 'python'],
            \ 'passive_filetypes': ['tex'] }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1

function! FindLocalPath(path)
    let l:local_path = findfile(a:path, '.;')
    if matchstr(l:local_path, "^\/\\w") == ''
        let l:local_path = getcwd() . "/" . l:local_path
    endif
    return l:local_path
endfunction
function! SetSyntasticJavascriptExecs()
    let local_eslint_pretty = FindLocalPath('node_modules/.bin/eslint-pretty')
    if executable(local_eslint_pretty)
        let &l:formatprg=local_eslint_pretty
    endif

    let local_eslint = FindLocalPath('node_modules/.bin/eslint')
    if executable(local_eslint)
        let b:syntastic_javascript_eslint_exec = local_eslint
    endif
endfunction

augroup custom_node_modules
    autocmd!
    autocmd FileType javascript call SetSyntasticJavascriptExecs()
augroup END
