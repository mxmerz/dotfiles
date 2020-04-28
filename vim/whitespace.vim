" Set whitespace options

" turn expandtab off
"set noexpandtab

" number of spaces a <tab> in the text stands for
set tabstop=2
set shiftwidth=2

" set clever autoindent
set copyindent
set preserveindent
set autoindent
set smartindent

" set list characters
set listchars=nbsp:·,tab:▸\ ,eol:¬,trail:█,extends:>,precedes:<
set list

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
