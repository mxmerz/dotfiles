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
set colorcolumn=81 " comma-separate additional values (eg. 120)
highlight ColorColumn ctermbg=8 guibg=darkgrey

" Configure whitespace
source ~/.vim/whitespace.vim

" Configure keyboard

" Map the leader to space key
let mapleader = " "

" backspace is allowed to go over newlines, start of insert,
set backspace=indent,eol,start

" fzf
nnoremap <C-p> :FZF<CR>

" Configure mouse
source ~/.vim/mouse.vim

" Configure NerdTree
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" Don't show help note
let NERDTreeMinimalUI = 1
" Open automatically if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
