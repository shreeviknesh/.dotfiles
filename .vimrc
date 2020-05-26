" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================
"
"
syntax on

set nu rnu "line numbering
set noerrorbells visualbell "no sounds at all
set t_vb= "No flashing pls

"Tabs and indentation
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent autoindent
set nowrap
"DON'T INSERT COMMENTS ON ENTER PLS
augroup Format-Options 
        autocmd!
        autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

set noswapfile "None of that ugly stuff
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch "Incremental search
set hlsearch

set cursorline "Highlight current line

" This causes some problems
set autochdir "Automatically switch working directory to the file path

set colorcolumn=100
highlight ColorColumn ctermbg=59 guibg=lightgrey

set cmdheight=2 "Give more space for displaying messages
set hidden "Buffers can exist in the background
set updatetime=50 "Having higher updatetimes causes lag

let mapleader = " "

" Stop using arrow keys dude
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" remaping shift+tab to switch between buffers
nnoremap  <silent> <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" Switching between buffers
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" mapping Ctrl+F5 for Rust
command! -nargs=* RR up | execute "!cargo run" <q-args>
autocmd FileType rust nmap <buffer> <F5> :w <CR> :RR <CR>
autocmd FileType rust imap <buffer> <F5> :w <CR> :RR <CR>

" Basically Alt-Up or Alt-Down functionality
" Move the selected contents up or down with highlight and format
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv



" Import all other settings from the .vim/config/ folder
:for f in split(globpath('~/.vim/config/', '*.vim'), '\n')
:   execute 'source' f
:endfor
