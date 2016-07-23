" Set some options
" Docs are at: http://vimdoc.sourceforge.net/htmldoc/options.html

" Pathogen
execute pathogen#infect()

" Syntax Highlighting
syntax on

" Color scheme
color smyck

" Turn on filetype recognition
filetype plugin indent on

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

" set list characters
set listchars=eol:$,tab:→·,trail:█,extends:…,precedes:…,conceal:…
