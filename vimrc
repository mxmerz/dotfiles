" Set some options
" Docs are at: http://vimdoc.sourceforge.net/htmldoc/options.html

" Include Plugins
source ~/.vim/plugins.vim

" Configure Language Server plugin
source ~/.vim/lsp.vim

" Syntax Highlighting
syntax on

" Color scheme
color smyck

" Sign column always visible
" https://superuser.com/a/558885
set signcolumn=yes

" fzf
nnoremap <C-p> :FZF<CR>

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

" Turn on filetype recognition
filetype plugin indent on

set mouse=a
set ttymouse=xterm2

" tmux-vim fixes
if &term =~ '^screen' && exists('$TMUX')
	set mouse+=a
	" tmux knows the extended mouse mode
	set ttymouse=xterm2
	" tmux will send xterm-style keys when xterm-keys is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
	execute "set <xHome>=\e[1;*H"
	execute "set <xEnd>=\e[1;*F"
	execute "set <Insert>=\e[2;*~"
	execute "set <Delete>=\e[3;*~"
	execute "set <PageUp>=\e[5;*~"
	execute "set <PageDown>=\e[6;*~"
	execute "set <xF1>=\e[1;*P"
	execute "set <xF2>=\e[1;*Q"
	execute "set <xF3>=\e[1;*R"
	execute "set <xF4>=\e[1;*S"
	execute "set <F5>=\e[15;*~"
	execute "set <F6>=\e[17;*~"
	execute "set <F7>=\e[18;*~"
	execute "set <F8>=\e[19;*~"
	execute "set <F9>=\e[20;*~"
	execute "set <F10>=\e[21;*~"
	execute "set <F11>=\e[23;*~"
	execute "set <F12>=\e[24;*~"
endif

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

" line numbers
set number
set ruler

" Set encoding
set encoding=utf-8

" set list characters
set listchars=nbsp:·,tab:▸\ ,eol:¬,trail:█,extends:>,precedes:<
set list

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" Map the leader to space key
let mapleader = " "
