syntax on 				"syntax highlighting
set nu 					"numbering
set rnu					"relative numbering
set numberwidth=5

set showmatch 			"show matching brackets
set nocompatible		"dont want vi compatibility

set wrap				"word wrap
set tabstop=4			"tab size
set shiftwidth=4		"auto-indent width
set softtabstop=4		"idk but keep it
set expandtab			"expand tabs to spaces

set encoding=utf-8		"encoding
set t_Co=256			"256 colors

set clipboard=unnamedplus "copy-paste

set nowritebackup           "pls dont backup
set noswapfile              "none of those annoying .swp files anymore

set cursorline

" Stop using arrow keys dude
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" remaping shift+tab to switch between buffers
nnoremap  <silent> <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

