let s:init_directory = fnamemodify($MYVIMRC, ':p:h')
let s:config_directory = s:init_directory . '/.vim/config'
let s:config_fragment_files = sort(globpath(s:config_directory, '*.vim', 0, 1))

for config_fragment_file in s:config_fragment_files
  execute 'source ' . config_fragment_file
endfor
