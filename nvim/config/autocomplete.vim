" Coc extensions
let g:coc_global_extensions = [
            \ 'coc-clangd',
            \ 'coc-rust-analyzer',
            \ 'coc-go',
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
    nmap <buffer> gd <Plug>(coc-definition)
    nmap <buffer> gy <Plug>(coc-type-definition)
    nmap <buffer> gi <Plug>(coc-implementation)
    nmap <buffer> gr <Plug>(coc-references)

    " Refactor/Rename the token
    nmap <buffer> rr <Plug>(coc-rename)
endfun

" A function that removes trailing whitespaces
fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhiteSpace()
autocmd FileType cpp,cxx,h,hpp,c,rust,go :call GoCoc()
