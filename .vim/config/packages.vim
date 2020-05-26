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

"Nerdtree - directories
Plug 'scrooloose/nerdtree'

"Fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': '~/.fzf/install' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'

call plug#end()

"Setting THE BEST colorscheme
colorscheme gruvbox
set background=dark

"Vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'

"Rustfmt on save
let g:rustfmt_autosave = 1

"Fzf settings
let g:fzf_preview_window = 'right:50%'
nnoremap <C-f> :FZF<CR>
inoremap <C-f> :FZF<CR>

"Vim-fugitive Settings
nmap <Leader>gs :G<CR>
