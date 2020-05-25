let mapleader = " "
syntax on

set nu rnu
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile 
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set clipboard+=unnamed
set clipboard+=unnamedplus
set cursorline
set autochdir "Automatically switch working directory to the file path

set colorcolumn=100
highlight ColorColumn ctermbg=59 guibg=lightgrey

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Stop using arrow keys dude
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" remaping shift+tab to switch between buffers
nnoremap  <silent> <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" mapping Ctrl+F5 for certain languages
command! -nargs=* RR up | execute "!cargo run" <q-args>
autocmd FileType rust nmap <buffer> <F5> :w <CR> :RR <CR>
autocmd FileType rust imap <buffer> <F5> :w <CR> :RR <CR>

"Nerdtree settings
map <C-n> :NERDTreeToggle<CR>
