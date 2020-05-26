" Toggle NERDTree with Ctrn-n
nmap     <C-n>    :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>n :NERDTreeFind<CR>

" Open NERDTree by default and close if it is the only tab open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter     * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter     * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Custom settings
let NERDTreeAutoDeleteBuffer = 1 " Automatically delete the buffer
let NERDTreeMinimalUI        = 1 " Prettier
let NERDTreeDirArrows        = 1 " Prettier
let NERDTreeQuitOnOpen       = 1 " Quit NERDTree when a file is opened
