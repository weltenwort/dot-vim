if isdirectory(expand('~/.cache/vim'))
    if &directory =~# '^\.,'
        set directory^=~/.cache/vim/swap//
    endif
    if &backupdir =~# '^\.,'
        set backupdir^=~/.cache/vim/backup//
    endif
    if exists('+undodir') && &undodir =~# '^\.\%(,\|$\)'
        set undodir^=~/.cache/vim/undo//
    endif
endif
if exists('+undofile')
    set undofile
endif
