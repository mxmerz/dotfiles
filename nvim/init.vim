" Set encoding
set encoding=utf-8

" syntax, filetype
syntax on
filetype plugin indent on
set background=dark
colorscheme smyck

" line numbers
set number
set ruler

"set mouse=a
"set ttymouse=xterm2

" set list characters
set listchars=nbsp:·,tab:▸\ ,eol:¬,trail:█,extends:>,precedes:<
set list


" --------
"  neovim
" --------

" Python support.
let g:python_host_prog = '/Users/mxmerz/.virtualenvs/neovim2/bin/python'
let g:python3_host_prog = '/Users/mxmerz/.virtualenvs/neovim3/bin/python'


" ---------
"  Plugins
" ---------

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

	" Install deoplete plugin for code completion support.
	if has('nvim')
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
		Plug 'Shougo/deoplete.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif
	let g:deoplete#enable_at_startup = 1

	" Install gitgutter plugin for support of git change markers next to line
	" numbers.
	"Plug 'airblade/vim-gitgutter'
	Plug 'mhinz/vim-signify'

	" Python language server
	Plug 'zchee/deoplete-jedi'

	" Fuzzy file opening.
	Plug 'cloudhead/neovim-fuzzy'

	" Support for TOML files.
	Plug 'cespare/vim-toml'

" Initialize plugin system
call plug#end()


" ---------------
"  Plugin Config
" ---------------

" signify: only try git
let g:signify_vcs_list = [ 'git' ]
let g:signify_sign_show_count = 0

" signify: use heavier signs (probably unnecessary on retina displays)
let g:signify_sign_add               = '✚'
let g:signify_sign_delete            = '▁'
let g:signify_sign_delete_first_line = '▔'
" let g:signify_sign_change            = '!' " options: ≠ • ~
" let g:signify_sign_changedelete      = g:signify_sign_change

highlight SignifySignAdd             cterm=bold ctermbg=238 ctermfg=2
highlight SignifySignChange          cterm=bold ctermbg=238 ctermfg=3
highlight SignifySignDelete          cterm=bold ctermbg=238 ctermfg=1
highlight SignifySignChangeDelete    cterm=bold ctermbg=238 ctermfg=3
highlight SignifySignDeleteFirstLine cterm=bold ctermbg=238 ctermfg=1

" --------------
"  Key Bindings
" --------------

" For fuzzy file finding.
nnoremap <C-p> :FuzzyOpen<CR>

