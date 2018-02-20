let mapleader = "\<Space>"
let maplocalleader = ";"
set timeoutlen=1000
set ttimeoutlen=0

let g:sneak#label = 1

" Searching
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)
nnoremap <leader>* :nohl<cr>
map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)

" Files
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>F :CtrlPCurFile<cr>
" nnoremap <leader>f :Files<cr>
" nnoremap <leader>F :Files %:p:h<cr>
" nnoremap <expr> <leader>r ':Files '.projectroot#guess().'<cr>'
nnoremap <leader>R :ProjectRootCD<cr>
nnoremap <leader>m :CtrlPModified<cr>
" nnoremap <leader>g :GFiles<cr>
" nnoremap <leader>G :GFiles?<cr>
nnoremap <leader>t :CtrlPSmartTabs<cr>
nnoremap - :Ranger<CR>
nnoremap _ :RangerNewTab<CR>

" Buffers
nnoremap + :CtrlPBuffer<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
" nnoremap + :Buffers<cr>
" nnoremap <leader>b :Buffers<cr>
nnoremap <bs><bs> :b#<cr>
nnoremap <Leader>q :Bdelete<cr>

" Other
nnoremap <F11> :set invpaste paste?<cr>
set pastetoggle=<F11>
nnoremap <leader>af gggqG``
nnoremap <leader>h :CtrlPHelp<cr>

" Tmux
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

" Tern
nnoremap <leader>td :TernDef<cr>
nnoremap <leader>tr :TernRefs<cr>
nnoremap <leader>tt :TernType<cr>
nnoremap <leader>tn :TernRename<cr>
nnoremap <leader>tb :TernDoc<cr>
nnoremap <leader>tB :TernDocBrowse<cr>

" YCM
nnoremap <leader>cd :YcmCompleter GetDoc<cr>
nnoremap <leader>cD :YcmCompleter GoToDefinition<cr>
nnoremap <leader>ct :YcmCompleter GetType<cr>
nnoremap <leader>cT :YcmCompleter GoToType<cr>
nnoremap <leader>cr :YcmCompleter RefactorRename 
nnoremap <leader>cR :YcmCompleter GoToReferences<cr>
nnoremap <leader>cl :YcmDiags<cr>

" Vimwiki
nnoremap <leader>wf :VimwikiFollowLink<cr>

" Rest Console
nnoremap <leader><cr> :call VrcQuery()<cr>

" Syntax
nmap <leader># <Plug>(ale_fix)
nmap <leader>ll <Plug>qf_loc_toggle
nmap <leader>cc <Plug>qf_qf_toggle
