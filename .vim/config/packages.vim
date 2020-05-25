call plug#begin('~/.vim/plugged/')

"colorscheme
Plug 'morhetz/gruvbox'

"Syntax highlighting for over 100 languages
Plug 'sheerun/vim-polyglot'

"Powerline for vim
Plug 'vim-airline/vim-airline'                    
Plug 'vim-airline/vim-airline-themes'

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Rust support
Plug 'rust-lang/rust.vim'

call plug#end()

colorscheme gruvbox
set background=dark

"Vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'

"Rustfmt on save
let g:rustfmt_autosave = 1
