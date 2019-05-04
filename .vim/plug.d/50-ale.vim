Plug 'w0rp/ale'

function s:InitPlugin()
  let g:ale_linters = {
      \ 'typescript': [],
      \ 'javascript': [],
      \ 'python': ['black', 'mypy'],
      \ }
      " \ 'typescript': ['tslint', 'prettier'],
      " \ 'javascript': ['eslint', 'prettier'],
  let g:ale_fixers = {
      \ 'css': ['prettier'],
      \ 'scss': ['prettier'],
      \ 'json': ['prettier'],
      \ 'python': ['black'],
      \ 'sh': ['shfmt'],
      \ 'javascript': [],
      \ 'typescript': [],
      \ }
      " \ 'javascript': ['eslint', 'prettier'],
      " \ 'typescript': ['tslint', 'prettier'],
  let g:ale_sh_shfmt_options = '-i 2'

  nmap <leader># <Plug>(ale_fix)
endfunction

function s:DefineCustomAleLinters()

  call ale#linter#Define('typescript', {
  \   'name': 'tslintyaml',
  \   'executable_callback': 'ale#handlers#tslint#GetExecutable',
  \   'command_callback': 'GetTslintYamlCommand',
  \   'callback': 'HandleTslintYamlCommand',
  \   'lint_file': 1,
  \})
endfunction

augroup PlugAle
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
  " autocmd User PlugInit :call s:DefineCustomAleLinters()
augroup END

function GetTslintYamlConfigPath(buffer) abort
    return ale#path#ResolveLocalPath(
    \   a:buffer,
    \   'tslint.yaml',
    \   ale#path#ResolveLocalPath(
    \           a:buffer,
    \           'tslint.json',
    \           ale#Var(a:buffer, 'typescript_tslint_config_path')
    \   )
    \)
endfunction

function GetTslintYamlWorkingDir(buffer) abort
    let l:tslint_config_path = GetTslintYamlConfigPath(a:buffer)
    let l:tslint_config_dir = !empty(l:tslint_config_path)
    \  ? fnamemodify(l:tslint_config_path, ':p:h')
    \  : fnamemodify(bufname(a:buffer), ':p:h')
    let l:tslint_working_dir = l:tslint_config_dir =~ 'kibana/x-pack$'
    \  ? resolve(l:tslint_config_dir . '/..')
    \  : l:tslint_config_dir

    return l:tslint_working_dir
endfunction

function GetTslintYamlCommand(buffer) abort
    let l:tslint_config_path = GetTslintYamlConfigPath(a:buffer)

    let l:tslint_config_option = !empty(l:tslint_config_path)
    \   ? ' -c ' . ale#Escape(l:tslint_config_path)
    \   : ''

    let l:tslint_rules_dir = ale#Var(a:buffer, 'typescript_tslint_rules_dir')
    let l:tslint_rules_option = !empty(l:tslint_rules_dir)
    \  ? ' -r ' . ale#Escape(l:tslint_rules_dir)
    \  : ''

    let l:tslint_config_dir = !empty(l:tslint_config_path)
    \  ? fnamemodify(l:tslint_config_path, ':p:h')
    \  : fnamemodify(bufname(a:buffer), ':p:h')
    let l:tslint_working_dir = GetTslintYamlWorkingDir(a:buffer)

    return ale#path#CdString(l:tslint_working_dir)
    \   . ale#Escape(ale#handlers#tslint#GetExecutable(a:buffer))
    \   . ' --format json'
    \   . l:tslint_config_option
    \   . l:tslint_rules_option
    \   . ' %t'
endfunction

function HandleTslintYamlCommand(buffer, lines) abort
    " Do not output any errors for empty files if the option is on.
    if ale#Var(a:buffer, 'typescript_tslint_ignore_empty_files')
    \&& getbufline(a:buffer, 1, '$') == ['']
        return []
    endif

    let l:dir = GetTslintYamlWorkingDir(a:buffer)
    let l:output = []

    for l:error in ale#util#FuzzyJSONDecode(a:lines, [])
        if get(l:error, 'ruleName', '') is# 'no-implicit-dependencies'
            continue
        endif

        let l:item = {
        \   'type': (get(l:error, 'ruleSeverity', '') is# 'WARNING' ? 'W' : 'E'),
        \   'text': l:error.failure,
        \   'lnum': l:error.startPosition.line + 1,
        \   'col': l:error.startPosition.character + 1,
        \   'end_lnum': l:error.endPosition.line + 1,
        \   'end_col': l:error.endPosition.character + 1,
        \}

        let l:filename = ale#path#GetAbsPath(l:dir, l:error.name)

        " Assume temporary files are this file.
        if !ale#path#IsTempName(l:filename)
            let l:item.filename = l:filename
        endif

        if has_key(l:error, 'ruleName')
            let l:item.code = l:error.ruleName
        endif

        call add(l:output, l:item)
    endfor

    return l:output
endfunction
