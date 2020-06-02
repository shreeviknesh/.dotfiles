" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ========================= General Config ========================================================

syntax on
set encoding=utf-8
set nu rnu                  " Line numbering
set noerrorbells visualbell " No sounds at all
set t_vb=                   " No flashing pls

set showcmd                 " Show the current command that is being typed
set signcolumn=yes          " Always show the gutter
set updatetime=50           " Having higher updatetimes causes lag

"set autochdir              " Automatically switch working directory to the file path
set incsearch hlsearch     " Incremental search and highlight the search
set smartcase ignorecase   " Search case is inferred
let @/ = ""                " Initial search should be empty
set scrolloff=7            " (CAUSES PROBLEMS) Always have n lines above/below the cursor
if has("nvim")
    set inccommand=nosplit " Replace command incremental search
endif

set background=dark         " Dark mode is the boss
set cursorline              " Highlight current line
set colorcolumn=100         " Column width 100
set t_Co=256                " 256 colors support
set termguicolors           " Let vim choose the colors

set clipboard=unnamedplus   " System clipboard support

set splitbelow splitright   " The splits should be intuitive

" ========================= Indentation Config ===============================================

set tabstop=4 softtabstop=4 shiftwidth=4          " Set tab length to be 4
set expandtab                                     " Expand tabs to spaces
set smarttab                                      " Smart tab on enter
set list                                          " Indentation guides
set listchars=tab:❘-,trail:·,extends:»,precedes:« " Use this to show indent
set smartindent autoindent
set nowrap                                        " No textwrapping
augroup Format-Options                            " DON'T INSERT COMMENTS ON ENTER PLS
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o formatoptions-=t
augroup END

" ========================= Vim Files Config ======================================================

set noswapfile                     " None of that ugly stuff
set nobackup                       " Don't take backup
set undofile                       " Persistent undo file
set undodir=~/.config/nvim/undodir " Persistent undo file directory

" ========================= Remaps ================================================================
let mapleader  = " "
set timeoutlen=200

" Save buffer using Ctrl-S
nnoremap <C-s> :w <CR>
inoremap <C-s> <ESC>:w<CR>i
" Close buffer using Ctrl-W
nnoremap <C-w> :bd<CR>
inoremap <C-w> <ESC>:bd<CR>

" Stop using arrow keys dude
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Unhighlight search on escape
nnoremap <silent> <ESC> :noh<CR><ESC>
" Use ii to to to normal mode from insert mode
inoremap ii <ESC>
" Use shift-Tab to de-tab in insert mode
inoremap <S-Tab> <ESC><<i

" Remaping shift+Tab to save and switch between buffers
nnoremap  <silent>   <Tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <S-Tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" Switching between buffers
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>


" Basically Alt-Up or Alt-Down functionality
" Move the selected contents up or down with highlight and format
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Reload configuration and open config files
nnoremap <Leader><F5> :source $MYVIMRC <CR>
command! -nargs=0 EditConfig up | execute "next ~/.config/nvim/init.vim ~/.config/nvim/config/*.vim" <q-args>

" ========================= Import All other settings =============================================

:for f in split(globpath('~/.config/nvim/config', '*.vim'), '\n')
:   execute 'source' f
:endfor

" ========================= END ===================================================================
