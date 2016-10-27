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
Plug 'mhinz/vim-startify'
Plug 'moll/vim-bbye'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Files
Plug 'dominickng/fzf-session'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'airblade/vim-gitgutter'
Plug 'dbakker/vim-projectroot'
Plug 'gregsexton/gitv'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'pelodelfuego/vim-swoop'
Plug 'sjl/splice.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'

" Syntax: Common
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'raimondi/delimitmate'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

" Syntax: JavaScript
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Motion
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'textobj-indent'
Plug 'textobj-user'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
