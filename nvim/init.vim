" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ========================= General Config ========================================================

syntax on
set encoding=utf-8
set fileformat=unix         " To avoid errors
set nu rnu                  " Line numbering
set noerrorbells visualbell " No sounds at all
set t_vb=                   " No flashing pls

set showcmd                 " Show the current command that is being typed
set cmdheight=2             " Give more space for displaying messages
set signcolumn=yes          " Always show the gutter
set updatetime=50           " Having higher updatetimes causes lag

set autochdir               " Automatically switch working directory to the file path
set incsearch               " Incremental search
set hlsearch                " Highlight the search
"if has("nvim")
    "set inccommand=nosplit      " Replace command incremental search
"endif

set background=dark         " Dark mode is the boss
set cursorline              " Highlight current line
set colorcolumn=100         " Column width 100

set clipboard=unnamedplus

set termguicolors
set t_Co=256

augroup ColumnColor         " Overwrite the colorcolumn color set by the colorscheme to GREEN
    autocmd!
    autocmd ColorScheme * highlight ColorColumn ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
augroup END

set splitbelow splitright   " The splits should be intuitive

" ========================= Tabs/Indentation Config ===============================================

set tabstop=4 softtabstop=4 shiftwidth=4 " Set tab length to be 4
set expandtab                            " Expand tabs to spaces
set smarttab                             " Smart tab on enter
set smartindent autoindent
set nowrap                               " No textwrapping
augroup Format-Options                   " DON'T INSERT COMMENTS ON ENTER PLS
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

" Stop using arrow keys dude
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Unhighlight search on double escape
nnoremap <silent> <ESC> :noh<CR><ESC>
" Use ii to to to normal mode from insert mode
inoremap ii <ESC>
" Use shift-Tab to de-tab
inoremap <S-Tab> <ESC><<i

" Remaping shift+Tab to switch between buffers
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>

" Switching between buffers
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Switching between splits
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Mapping Ctrl+F5 for Rust
command! -nargs=* RR up | execute "!cargo run" <q-args>
autocmd FileType rust nmap <buffer> <F5> :w <CR> :RR <CR>
autocmd FileType rust imap <buffer> <F5> :w <CR> :RR <CR>

" Basically Alt-Up or Alt-Down functionality
" Move the selected contents up or down with highlight and format
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Reload configuration and open config files
nnoremap <Leader><F5> :source $MYVIMRC <CR>
command! -nargs=* EditConfig up | execute "next ~/.config/nvim/init.vim ~/.config/nvim/config/*.vim" <q-args>

" ========================= Import All other settings =============================================

:for f in split(globpath('~/.config/nvim/config', '*.vim'), '\n')
:   execute 'source' f
:endfor

" ========================= END ===================================================================
