" Toggle NERDTree with Ctrn-n
nmap <C-n> :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>n :NERDTreeFind<CR>

" Open NERDTree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Quit NERDTree with a file is opened
let NERDTreeQuitOnOpen = 1

" Close the tab if the only remaining window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically delete the buffer
let NERDTreeAutoDeleteBuffer = 1

" Prettier 
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
