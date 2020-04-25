" Set some options
" Docs are at: http://vimdoc.sourceforge.net/htmldoc/options.html

" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Vim Language Server support
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
" LSP automatic detection for some languages
"Plug 'mattn/vim-lsp-settings'

Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch': 'next',
	\ 'do': 'bash install.sh',
	\ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" Airline
Plug 'vim-airline/vim-airline'

" Fuzzy file opening
Plug 'ctrlpvim/ctrlp.vim'

" Language Syntax
" Elixir
Plug 'elixir-editors/vim-elixir'
" PlantUML
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

" Initialize plugin system
call plug#end()

" LanguageClient-neovim
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" let g:lsp_signs_information = {'text': '✗'}

" Configure LSP for swift
if executable('sourcekit-lsp')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'sourcekit-lsp',
		\ 'cmd': {server_info->['sourcekit-lsp']},
		\ 'whitelist': ['swift'],
		\ })
endif


" Syntax Highlighting
syntax on

" Color scheme
color smyck

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
