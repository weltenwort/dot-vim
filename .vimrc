" vim:foldmethod=marker

set nocompatible

" Plugins {{{
call plug#begin('~/.vim/plugged')

"  snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'weltenwort/vim-sparkup'
Plug 'Chiel92/vim-autoformat'
Plug 'honza/vim-snippets'
Plug 'justinj/vim-react-snippets'

"  formatting
Plug 'The-NERD-Commenter'
Plug 'delimitMate.vim'
Plug 'surround.vim'
Plug 'godlygeek/tabular'
Plug 'DrawIt'
Plug 'AndrewRadev/splitjoin.vim'

"  layout
Plug 'chriskempson/base16-vim'
Plug 'bling/vim-airline'
"Plug 'edkolev/tmuxline.vim'
Plug 'regedarek/ZoomWin'
Plug 'nathanaelkane/vim-indent-guides'

"  misc
"Plug 'vim-scripts/aurum'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'Gundo'
"Plug 'SuperTab-continued.'
Plug 'scrooloose/syntastic'
Plug 'The-NERD-tree'
Plug 'ctrlp.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite-session'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimfiler.vim', { 'commit': '730d41f6ebe19422cb385c64833976fcc84a66d6' }
Plug 'airblade/vim-gitgutter'
Plug 'fugitive.vim'
Plug 'gregsexton/gitv'
Plug 'jreybert/vimagit'
Plug 'matchit.zip'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'Tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-pyref'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'mileszs/ack.vim'
Plug 'gabesoft/vim-ags'
Plug 'textobj-user'
Plug 'textobj-indent'
Plug 'sjl/clam.vim'
Plug 'sjl/splice.vim'
Plug 'tpope/vim-eunuch'
"Plug 'tpope/vim-vinegar'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'ingo-library'
Plug 'SearchHighlighting'
"Plug 'bronson/vim-visual-star-search'
Plug 'diepm/vim-rest-console'
Plug 'moll/vim-bbye'
Plug 'KabbAmine/zeavim.vim'

"  languages
Plug 'kchmck/vim-coffee-script'
Plug 'lukaszkorecki/CoffeeTags'
Plug 'groenewege/vim-less'
Plug 'digitaltoad/vim-jade'
"Plug 'vim-ipython'
Plug 'jpythonfold.vim'
Plug 'pydoc.vim'
"Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'atdt/vim-mediawiki'
Plug 'mfukar/robotframework-vim'
Plug 'elzr/vim-json'
"Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'flowtype/vim-flow', { 'for': 'javascript' }
Plug 'mxw/vim-jsx'
Plug 'chase/vim-ansible-yaml'
Plug 'wavded/vim-stylus'
Plug 'shime/vim-livedown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'tmux-plugins/vim-tmux'
Plug 'elmcast/elm-vim'
Plug 'raichoo/purescript-vim'

call plug#end()
" }}}

" Filetype {{{
filetype plugin indent on
syntax on
" }}}

" Colors {{{
set t_Co=256
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif
highlight clear SignColumn
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=00
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=18
" }}}

" General {{{
set autoread
set nobackup
"set noswapfile
" }}}

" Text Options {{{
set autoindent
set backspace=2
set encoding=utf-8
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=4 expandtab
let g:pandoc#after#modules#enabled = ["ultisnips", "unite"]
" }}}

" Layout {{{
set cursorline
set diffopt+=vertical
set display+=lastline
set foldcolumn=2
set foldlevel=3
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬
set number
set scrolloff=1
set sidescrolloff=5
set winaltkeys=no
set splitbelow
set splitright
set nrformats-=octal
let g:powerline_loaded = 1
let g:vim_json_syntax_conceal = 0
" }}}

" Caches {{{
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
" }}}

" Sessions {{{
let g:session_autoload = "no"
" }}}

" Completion {{{
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,preview,longest
"\ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
let g:ycm_allow_changing_updatetime = "no"
let g:ycm_key_list_previous_completion=['<Up>']
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:ycm_semantic_triggers = {
\   'elm' : ['.'],
\ }
" }}}

" Wild Menu {{{
source $VIMRUNTIME/menu.vim
set wildmenu
set wildmode=longest,list
set cpo-=<
set wcm=<C-Z>
" }}}

" Directory Browsing {{{
let NERDTreeHijackNetrw = 0
let NERDTreeWinSize = 50
let g:netrw_liststyle = 1
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'
let g:vimfiler_as_default_explorer = 1
autocmd FileType vimfiler unmap <buffer> <C-j>
autocmd FileType vimfiler nmap <buffer> <leader>uh <Plug>(vimfiler_switch_to_history_directory)

let g:unite_source_rec_async_command =
\ ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
if executable('ag')
    " Use ag in unite grep source.
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts =
    \ '-i --line-numbers --nocolor --nogroup --hidden --ignore ' .
    \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
    let g:unite_source_grep_recursive_opt = ''
elseif executable('pt')
    " Use pt in unite grep source.
    " https://github.com/monochromegane/the_platinum_searcher
    let g:unite_source_grep_command = 'pt'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor'
    let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
    " Use ack in unite grep source.
    let g:unite_source_grep_command = 'ack-grep'
    let g:unite_source_grep_default_opts =
    \ '-i --no-heading --no-color -k -H'
    let g:unite_source_grep_recursive_opt = ''
endif
call unite#filters#sorter_default#use(['sorter_length'])
call unite#custom#source('buffer', 'sorters', ['sorter_nothing'])
" }}}

" Git/Hg {{{
let g:fugitive_git_executable = 'LANG=en git'
let g:airline#extensions#hunks#non_zero_only = 1

let g:aurum_commitinfowincmd = 1
let g:Gitv_DoNotMapCtrlKey = 1

autocmd BufReadPost fugitive://* set bufhidden=delete
" }}}

" Tags {{{
let g:easytags_by_filetype = "~/.easytags"
let g:easytags_ignored_filetypes = ""
let g:tagbar_type_tex = {
            \ 'kinds' : [
            \ 'i:includes:1:0',
            \ 'p:parts',
            \ 'c:chapters',
            \ 's:sections',
            \ 'u:subsections',
            \ 'b:subsubsections',
            \ 'P:paragraphs:0:0',
            \ 'G:subparagraphs:0:0',
            \ 'l:labels:0:0',
            \ 'r:refs:1:0',
            \ 'p:pagerefs:1:0',
            \ ],
            \ }
let g:tagbar_type_bib = {
            \ 'ctagstype': 'bib',
            \ 'kinds' : [
            \ 'b:bib:0:0',
            \ ]
            \ }
" }}}

" Syntax {{{
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['coffee', 'css', 'javascript', 'python'],
            \ 'passive_filetypes': ['tex'] }
"let g:syntastic_python_checker_args='--ignore=E501,W191'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:flow#enable = 0
let g:elm_detailed_complete = 1
let g:formatdef_standard_javascript = '"standard-format -"'
let g:formatters_javascript = ['standard_javascript', 'jscs']
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
function! SetFlowExecs()
    let local_flow = FindLocalPath('node_modules/.bin/flow')
    if executable(local_flow)
        let g:flow#flowpath = local_flow
    endif
endfunction
augroup node_modules_custom
    autocmd!
    autocmd FileType javascript call SetSyntasticJavascriptExecs()
    autocmd FileType javascript call SetFlowExecs()
augroup END
augroup suffixes_custom
    autocmd!
    autocmd FileType coffee setlocal suffixesadd=.coffee,.js,/index.coffee,/index.js
augroup END
augroup indent_custom
    autocmd!
    autocmd FileType javascript setlocal sw=2 sts=2 ts=2 expandtab
augroup END
" }}}

" Pydoc {{{
let g:pydoc_cmd = "/usr/bin/pydoc2"
let g:pyref_mapping = "<F7>"
" }}}

" Undo {{{
let g:gundo_right = 1
" }}}

" EasyMotion {{{
let g:EasyMotion_smartcase = 1
" }}}

" Key Maps {{{
let mapleader = ","
let maplocalleader = ";"
set timeoutlen=1000
set ttimeoutlen=0

nnoremap ä ]
nnoremap ö \
nnoremap <F8> :TagbarOpenAutoClose<CR>
nnoremap <S-F8> :TagbarToggle<CR>
nnoremap <F9> :GundoToggle<CR>
noremap <F10> :NERDTreeToggle<CR>
nnoremap <F12>  :Explore<CR>
nnoremap - :VimFiler<CR>
nnoremap _ :VimFiler -project -find<CR>

" Motions
nmap s <Plug>(easymotion-s2)
omap t <Plug>(easymotion-bd-tl)
nnoremap ü <C-]>
nnoremap Ü <C-O>

nnoremap <leader><tab> :Unite -start-insert -no-split buffer<CR>
nnoremap + :Unite -start-insert -no-split buffer<CR>
nnoremap <Leader>q :Bdelete<CR>
nnoremap <Leader>qq :Bdelete<CR>

nnoremap <leader>l :set list!<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>p :pclose<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gst :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gv :Gitv --all<CR>
nnoremap <leader>ll :llist<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lN :lprev<CR>
nnoremap <leader>qc :cc<CR>
nnoremap <leader>qw :cw<CR>
nnoremap <leader>qn :cnext<CR>
nnoremap <leader>qp :cprev<CR>
nnoremap <leader>r :YRShow<CR>
nnoremap <leader>! :Clam<space>
vnoremap <leader>! :ClamVisual<space>

vnoremap <leader>t\| :Tabularize /\|<CR>
nnoremap <leader>t\| :Tabularize /\|<CR>

nnoremap <leader>hqr :!cd %:p:h && hg qrefresh && hg ci --mq -m "."<CR>
nnoremap <leader>cd :cd %:p:h<CR>

set <M-p>=p
map p <M-p>
set <M-n>=n
map n <M-n>

noremap <leader>au :Autoformat<CR><CR>
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
nnoremap <F11> :set invpaste paste?<CR>
set pastetoggle=<F11>

nnoremap <leader>.f :Unite -start-insert -no-split file_rec/async<CR>
nnoremap <leader>.F :Unite -start-insert -no-split file_rec/async:!<CR>
nnoremap <leader>.d :Unite -start-insert -no-split directory<CR>
nnoremap <leader>.g :Unite -start-insert grep<CR>
nnoremap <leader>.y :Unite -no-split history/yank<CR>
nnoremap <leader>.l :Unite -start-insert line<CR>
nnoremap <leader>.o :Unite -start-insert -no-split outline<CR>
nnoremap <leader>.s :Unite -no-split session<CR>
nnoremap <leader>.b :Unite -no-split bookmark<CR>
nnoremap <leader>.r :Unite -no-split register<CR>
nnoremap <leader>.t :Unite -start-insert -no-split tab<CR>
nnoremap <leader>.m :Unite -start-insert -no-split file_mru<CR>
nnoremap <leader>.u :UniteResume<CR>

function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

nnoremap <leader>vp :VimuxPromptCommand<CR>
nnoremap <Leader>vi :VimuxInspectRunner<CR>
nnoremap <Leader>vl :VimuxRunLastCommand<CR>
nnoremap <Leader>vq :VimuxCloseRunner<CR>
nnoremap <Leader>vz :VimuxZoomRunner<CR>
vnoremap <LocalLeader>vs "vy :call VimuxSlime()<CR>"

augroup elm_custom
    autocmd!
    autocmd FileType elm nmap <leader>eb <Plug>(elm-make)
    autocmd FileType elm nmap <leader>em <Plug>(elm-make-main)
    autocmd FileType elm nmap <leader>et <Plug>(elm-test)
    autocmd FileType elm nmap <leader>er <Plug>(elm-repl)
    autocmd FileType elm nmap <leader>ee <Plug>(elm-error-detail)
    autocmd FileType elm nmap <leader>ed <Plug>(elm-show-docs)
    autocmd FileType elm nmap <leader>ew <Plug>(elm-browse-docs)
augroup END

"nnoremap [A <C-W>k
"nnoremap [B <C-W>j
"nnoremap [D <C-W>h
"nnoremap [C <C-W>l

"nnoremap <C-Up> <C-W>k
"nnoremap <C-Down> <C-W>j
"nnoremap <C-Left> <C-W>h
"nnoremap <C-Right> <C-W>l

"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" }}}
