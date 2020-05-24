call plug#begin('~/.config/nvim/plugged/')

"airline bar in vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"colorscheme
Plug 'morhetz/gruvbox'

"Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Syntax highlighting for over 100 languages
Plug 'sheerun/vim-polyglot'

"Color Highlighter
Plug 'ap/vim-css-color'

"Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Emmet
Plug 'mattn/emmet-vim'
call plug#end()

"Customization options for the above packages
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
colorscheme gruvbox

"We don't need that
let g:polyglot_disabled = ['css']

"Fuzzy Finder
set rtp+=~/.fzf
