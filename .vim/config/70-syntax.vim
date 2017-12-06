let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_javascript_support = 1
let g:tsuquyomi_single_quote_import = 1

let g:jsx_ext_required = 0

let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['coffee', 'css', 'javascript', 'python'],
            \ 'passive_filetypes': ['tex'] }
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_aggregate_errors = 1

let g:qf_mapping_ack_style = 1

let g:ale_linters = {
    \ 'typescript': ['tslint']
    \ }
let g:ale_fixers = {
    \ 'css': ['prettier'],
    \ 'javascript': ['prettier'],
    \ 'typescript': ['prettier']
    \ }
let g:ale_javascript_prettier_options = '--single-quote'
let g:ale_javascript_prettier_use_local_config = 1

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

    let local_flow = FindLocalPath('node_modules/.bin/flow')
    if executable(local_flow)
        let b:syntastic_javascript_flow_exec = local_flow
    endif
endfunction

augroup custom_node_modules
    autocmd!
    autocmd FileType javascript call SetSyntasticJavascriptExecs()
augroup END

augroup custom_autoformat
    autocmd!
    autocmd FileType markdown set formatoptions=tcqjnw
    autocmd FileType javascript.jsx,javascript setlocal formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ all\ --print-width=120
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.jsx
augroup END
