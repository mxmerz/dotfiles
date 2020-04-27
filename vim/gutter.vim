" Options for the gutter

" line numbers
set number
set ruler

" Sign column always visible
" https://superuser.com/a/558885
set signcolumn=yes

" signify: use heavier signs (probably unnecessary on retina displays)
"let g:signify_sign_add               = '✚'
let g:signify_sign_delete            = '▁'
let g:signify_sign_delete_first_line = '▔'
let g:signify_sign_change            = '•' " options: ! ≠ • ~
" let g:signify_sign_changedelete      = g:signify_sign_change

" Sign column in same color as background
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

" signify: fixup colors
highlight SignifySignAdd             cterm=bold ctermfg=2
highlight SignifySignChange          cterm=bold ctermfg=3
highlight SignifySignDelete          cterm=bold ctermfg=1
highlight SignifySignChangeDelete    cterm=bold ctermfg=3
highlight SignifySignDeleteFirstLine cterm=bold ctermfg=1
