call plug#begin('~/.vim/plugged/')

" colorscheme
Plug 'morhetz/gruvbox'

" Syntax highlighting, autocomplete and language support
Plug 'sheerun/vim-polyglot'
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

" ================ Custom Settings for Packages ====================
" BEST THEME EVER
colorscheme gruvbox
set background=dark

" Vim-airline settings
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme                      = 'base16'

" Rust.vim settings
let g:rustfmt_autosave = 1

"Goyo (Zen Mode) settings
let g:goyo_width = 100
let g:goyo_height = "90%"
nnoremap <Leader>g :Goyo<CR>

"Easy Align
nmap ga <Plug>(EasyAlign)

"Fzf settings
let g:fzf_preview_window = 'right:50%'
nnoremap <C-f> :FZF<CR>
inoremap <C-f> :FZF<CR>

"Vim-fugitive Settings
nmap <Leader>gs :G<CR>
