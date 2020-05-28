" Coc extensions
let g:coc_global_extensions = [
            \ 'coc-clangd',
            \ 'coc-rust-analyzer',
            \ 'coc-python',
            \ 'coc-prettier',
            \ 'coc-tsserver',
            \]

" Taken from COC documentation
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Custom function to be called for certain actions
fun! GoCoc()
    inoremap <buffer> <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()

    inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <buffer> <silent><expr> <C-space> coc#refresh()

    " GoTo code navigation.
    nmap <buffer> <leader>gd <Plug>(coc-definition)
    nmap <buffer> <leader>gy <Plug>(coc-type-definition)
    nmap <buffer> <leader>gi <Plug>(coc-implementation)
    nmap <buffer> <leader>gr <Plug>(coc-references)

    " Refactor/Rename the token
    nmap     <buffer> <leader>rr <Plug>(coc-rename)

    nnoremap <buffer> <leader>cr :CocRestart
endfun

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhiteSpace()
autocmd FileType cpp,cxx,h,hpp,c,rust,python :call GoCoc()
