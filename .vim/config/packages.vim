" ========================= Installing Packages ===================================================
call plug#begin('~/.vim/plugged/')

" colorscheme
Plug 'morhetz/gruvbox'

" Syntax highlighting, autocomplete and language support
Plug 'sheerun/vim-polyglot'
Plug 'cohama/lexima.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'

" Powerline for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Directories and files
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': '~/.fzf/install' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Misc
Plug 'junegunn/goyo.vim'       " Zen mode
Plug 'junegunn/vim-easy-align' " Align

call plug#end()

" ========================= Custom Settings for Packages ==========================================

colorscheme gruvbox         " Best Color Scheme ever
"colorscheme default        " Testing

" Vim-airline settings
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme                      = 'luna'

" Rust.vim settings
let g:rustfmt_autosave = 1

" Goyo (Zen Mode) settings
let g:goyo_width  = 80
let g:goyo_height = "90%"
let g:goyo_linenr = 2       " Show line numbers in zen mode
nnoremap <Leader>g :Goyo<CR>

" Easy Align
nmap ga <Plug>(EasyAlign)

" Fzf settings
let g:fzf_preview_window = 'right:50%'
nnoremap <C-f> :FZF<CR>
inoremap <C-f> :FZF<CR>

" Vim-fugitive Settings
nmap <Leader>gs :G<CR>

" ========================= NERDTree Settings =====================================================
" Toggle NERDTree with Leader-n
nmap     <Leader>n :NERDTreeToggle<Enter>
nnoremap <silent>  <Leader>nf :NERDTreeFind<CR>

" Open NERDTree by default and close if it is the only tab open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter     * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter     * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Custom NERDTree settings
let NERDTreeAutoDeleteBuffer = 1 " Automatically delete the buffer
let NERDTreeMinimalUI        = 1 " Prettier
let NERDTreeDirArrows        = 1 " Prettier
let NERDTreeQuitOnOpen       = 1 " Quit NERDTree when a file is opened

" ========================= END ===================================================================
