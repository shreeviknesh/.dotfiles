" ========================= Installing Packages ===================================================
call plug#begin('~/.config/nvim/plugged/')

" Colorscheme
Plug 'morhetz/gruvbox'
Plug 'fcpg/vim-fahrenheit'

" Syntax highlighting, autocomplete and language support
Plug 'sheerun/vim-polyglot'                     " Syntax highlighting
Plug 'cohama/lexima.vim'                        " Bracket pairs
Plug 'preservim/nerdcommenter'                  " Commenting
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete
Plug 'rust-lang/rust.vim'                       " Rust lang support
Plug 'rhysd/vim-clang-format'                   " Clang-format helper for vim required package 'clang-format' to be installed in system

" Powerline for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Directories and files
Plug 'scrooloose/nerdtree'                                       " Directory explorer
Plug 'ryanoasis/vim-devicons'                                    " File icons in NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                   " File colors in NERDTree
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': '~/.fzf/install' } " Fuzzy finder
Plug 'junegunn/fzf.vim'                                          " Fuzzy finder vim helper

" Git
Plug 'airblade/vim-gitgutter' " Shows git changes in gutter

" Misc
Plug 'junegunn/goyo.vim'       " Zen mode
Plug 'junegunn/vim-easy-align' " Align

call plug#end()

" ========================= Custom Settings for Packages ==========================================

colorscheme gruvbox         " Best Color Scheme ever
"colorscheme fahrenheit

" Vim-airline settings
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme                      = 'luna'

" Nerd Commenter settings
" Use Ctrl + / to toggle comments
" Vim registers / as _ so it's okay to user Ctrl + /
vmap <C-_> <plug>NERDCommenterToggle<CR>gv
nmap <C-_> <plug>NERDCommenterToggle

" Autoformat on save
let g:rustfmt_autosave               = 1
let g:clang_format#auto_format       = 1
let g:clang_format#detect_style_file = 1

" Goyo (Zen Mode) settings
nmap <Leader>g :Goyo<CR>
let g:goyo_width  = 80
let g:goyo_height = "90%"
let g:goyo_linenr = 2       " Show line numbers in zen mode

" Easy Align
nmap ga <Plug>(EasyAlign)

" Fzf settings
let g:fzf_preview_window = 'right:50%'
nmap <C-f> :FZF<CR>
imap <C-f> <ESC>:FZF<CR>

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

" vim-nerdtree-syntax-highlight settings to highlight filename along with icons
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName    = 1
let g:NERDTreePatternMatchHighlightFullName  = 1

" ========================= END ===================================================================
