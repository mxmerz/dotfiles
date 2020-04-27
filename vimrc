" Set some options
" Docs are at: http://vimdoc.sourceforge.net/htmldoc/options.html

" Include Plugins
source ~/.vim/plugins.vim

" Configure Language Server plugin
source ~/.vim/lsp.vim

" Set encoding
set encoding=utf-8

" Syntax Highlighting
syntax on

" Turn on filetype recognition
filetype plugin indent on

" Color scheme
color smyck

" Configure the gutter
source ~/.vim/gutter.vim

" Configure the color column
" https://vi.stackexchange.com/a/357
set colorcolumn=81 " comma-separete additional values (eg. 120)
highlight ColorColumn ctermbg=8 guibg=darkgrey

" fzf
nnoremap <C-p> :FZF<CR>

" Configure mouse
source ~/.vim/mouse.vim

" backspace is allowed to go over newlines, start of insert,
set backspace=indent,eol,start

" turn expandtab off
"set noexpandtab

" number of spaces a <tab> in the text stands for
set ts=2 " tabstop
set sw=2 " shiftwidth

" set clever autoindent
set copyindent
set preserveindent
set autoindent
set smartindent

" set list characters
set listchars=nbsp:·,tab:▸\ ,eol:¬,trail:█,extends:>,precedes:<
set list

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" Map the leader to space key
let mapleader = " "

" Configure NerdTree
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" Don't show help note
let NERDTreeMinimalUI = 1
" Open automatically if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
