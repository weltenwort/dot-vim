Plug 'romainl/vim-qf'

function s:InitPlugin()
  let g:qf_mapping_ack_style = 1

  nmap <leader>ll <Plug>(qf_loc_toggle_stay)
  nmap <leader>lL <Plug>(qf_loc_toggle)
  nmap <leader>ln <Plug>(qf_loc_next)
  nmap <leader>lp <Plug>(qf_loc_previous)
  nmap <leader>lw <Plug>(qf_qf_switch)
  nmap <leader>cc <Plug>(qf_qf_toggle_stay)
  nmap <leader>cC <Plug>(qf_qf_toggle)
  nmap <leader>cn <Plug>(qf_qf_next)
  nmap <leader>cp <Plug>(qf_qf_previous)
  nmap <leader>cw <Plug>(qf_qf_switch)
endfunction

augroup PlugQf
  autocmd!
  autocmd User PlugInit :call s:InitPlugin()
augroup END
