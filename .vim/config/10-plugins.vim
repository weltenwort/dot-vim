call plug#begin('~/.vim/plugged')

" Basics
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-sensible'
if !has('nvim')
  Plug 'noahfrederick/vim-neovim-defaults'
endif

" Layout, Theme
Plug 'benmills/vimux'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/vim-peekaboo'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-bbye'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Files
" Plug 'dominickng/fzf-session'
Plug 'AndrewRadev/linediff.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'airblade/vim-gitgutter'
Plug 'dbakker/vim-projectroot'
Plug 'dohsimpson/vim-macroeditor'
Plug 'gregsexton/gitv'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
" Plug 'pelodelfuego/vim-swoop'
Plug 'sjl/splice.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-vinegar'
Plug 'wincent/ferret'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'zeero/vim-ctrlp-help'
Plug 'jasoncodes/ctrlp-modified.vim'

" HTTP Requests
Plug 'diepm/vim-rest-console'

" Syntax: Common
" Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'junegunn/vim-easy-align'
Plug 'raimondi/delimitmate'
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

" Syntax: JavaScript/TypeScript
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" Plug 'Quramy/tsuquyomi'

" Syntax: Ansible
Plug 'pearofducks/ansible-vim'
Plug 'phenomenes/ansible-snippets'

" Syntax: Beancount
Plug 'nathangrigg/vim-beancount'

" Syntax: Notes and Tasks
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'blindFS/vim-taskwarrior'
Plug 'tbabej/taskwiki'

" Syntax: Tmux
Plug 'tmux-plugins/vim-tmux'

" Motion
Plug 'gcmt/wildfire.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'justinmk/vim-sneak'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'wellle/targets.vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
