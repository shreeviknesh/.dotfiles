" ========================= Installing Packages ===================================================
call plug#begin('~/.config/nvim/plugged/')

" Colorscheme
Plug 'gruvbox-community/gruvbox'

" Syntax highlighting, autocomplete and language support
Plug 'sheerun/vim-polyglot'        " Syntax highlighting
Plug 'jiangmiao/auto-pairs'        " Bracker pairs
Plug 'luochen1990/rainbow'         " Bracket colorizer
Plug 'preservim/nerdcommenter'     " Commenting
Plug 'Yggdroot/indentLine'         " Show indentation levels
Plug 'norcalli/nvim-colorizer.lua' " Color highlighter

Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Autocomplete
Plug 'rust-lang/rust.vim'                           " Rust lang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  } " Golang support
Plug 'rhysd/vim-clang-format'                       " Clang-format helper for vim 'clang-format' has to be installed in system

" Statusline and tabs for vim
Plug 'itchyny/lightline.vim' " Statusline for vim
Plug 'ap/vim-buftabline'     " Show buffers as tabs

" Directories and files
Plug 'scrooloose/nerdtree'                                       " Directory explorer
Plug 'junegunn/fzf.vim'                                          " Fuzzy finder vim helper
"Plug 'airblade/vim-rooter'                                       " Autochdir to the root of the project

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' " Shows git changes in gutter

" Misc
Plug 'junegunn/goyo.vim'       " Zen mode
Plug 'junegunn/vim-easy-align' " Align

call plug#end()

" ========================= Custom Settings for Packages ==========================================

let g:gruvbox_contrast_dark = 'hard' " Add this before setting the colorscheme
colorscheme gruvbox                  " Best Color Scheme ever

" Rainbow (matching pair colorizer) settings
let g:rainbow_active = 1

" Nerd Commenter settings
" Use Leader + / to toggle comments in normal and visual modes
vmap <Leader>/ <plug>NERDCommenterToggle<CR>gv
nmap <Leader>/ <plug>NERDCommenterToggle

" Autoformat on save (rust.vim and clangd)
let g:rustfmt_autosave               = 1
let g:clang_format#auto_format       = 1
let g:clang_format#detect_style_file = 1 " Automatically find .clang-format file

" vim-go settings
let g:go_fmt_autosave             = 1           " Auto format on save
let g:go_auto_type_info           = 1           " Show type info in statusline
let g:go_fmt_command              = "goimports"
let g:go_auto_sameids             = 1           " Autohighlight same ids

" Goyo (Zen Mode) settings
nmap <Leader>g :Goyo<CR>
let g:goyo_width  = 100
let g:goyo_height = "90%"
let g:goyo_linenr = 2       " Show line numbers in zen mode

" Easy Align
nmap ga <Plug>(EasyAlign)

" Fzf settings
let g:fzf_preview_window = 'right:50%'
nmap <C-f> :FZF<CR>
imap <C-f> <ESC>:FZF<CR>

" Mapping Ctrl+F5 for Rust and Go
command! -nargs=* RR up | execute "!cargo run" <q-args>
autocmd FileType rust nnoremap <buffer> <F5> :w <CR> :RR <CR>
autocmd FileType rust inoremap <buffer> <F5> :w <CR> :RR <CR>
autocmd FileType go   nnoremap <F5> :w <CR> :GoRun <CR>
autocmd FileType go   inoremap <F5> :w <CR> :GoRun <CR>

" ========================= NERDTree Settings =====================================================

" Toggle NERDTree with Leader-n
nmap     <Leader>n :NERDTreeToggle<Enter>
nnoremap <silent>  <Leader>nf :NERDTreeFind<CR>

" Ignore these folders
let g:NERDTreeIgnore = [
            \ '^[Tt]arget$',
            \ '^[Bb]uild$',
            \ '^[Dd]ist$',
            \ '^[Ee]nv$',
            \ '^__pycache__$',
            \ '^node_modules$'
            \]

" Open NERDTree by default and close if it is the only tab open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter     * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter     * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Custom NERDTree settings
let NERDTreeAutoDeleteBuffer                 = 1 " Automatically delete the buffer
let NERDTreeQuitOnOpen                       = 1 " Quit NERDTree when a file is opened
let NERDTreeDirArrowExpandable               = "►"
let NERDTreeDirArrowCollapsible              = "▼"

" ========================= END ===================================================================
