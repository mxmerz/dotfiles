" Set encoding
set encoding=utf-8

" lilypond syntax support.
set runtimepath+=/Applications/LilyPond.app/Contents/Resources/share/lilypond/current/vim/

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
let g:python3_host_prog = '/Users/mxmerz/.venvs/neovim3/bin/python'


" ---------
"  Plugins
" ---------

" LanguageServer-neovim: Set signs.
let g:LanguageClient_diagnosticsDisplay = {
    \     1: {
    \         "name": "Error",
    \         "texthl": "ALEError",
    \         "signText": "x",
    \         "signTexthl": "ALEErrorSign",
    \     },
    \     2: {
    \         "name": "Warning",
    \         "texthl": "ALEWarning",
    \         "signText": "!",
    \         "signTexthl": "ALEWarningSign",
    \     },
    \     3: {
    \         "name": "Information",
    \         "texthl": "ALEInfo",
    \         "signText": "i",
    \         "signTexthl": "ALEInfoSign",
    \     },
    \     4: {
    \         "name": "Hint",
    \         "texthl": "ALEInfo",
    \         "signText": "➤",
    \         "signTexthl": "ALEInfoSign",
    \     },
    \ }


" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

	" Language server client.
	Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

	" Install deoplete plugin for code completion support.
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	let g:deoplete#enable_at_startup = 1

	" Install gitgutter plugin for support of git change markers next to line
	" numbers.
	Plug 'mhinz/vim-signify'

	" Language server: Python
	Plug 'zchee/deoplete-jedi'

	" Fuzzy file opening.
	Plug 'cloudhead/neovim-fuzzy'

	" Support for TOML files.
	Plug 'cespare/vim-toml'

	" Support for pandoc's MarkDown variant.
	Plug 'vim-pandoc/vim-pandoc-syntax'

	" (La)TeX support
	Plug 'lervag/vimtex'

" Initialize plugin system
call plug#end()


" ---------------
"  Plugin Config
" ---------------

" LanguageServer-neovim: Required for operations modifying multiple buffers like rename.
set hidden

" LanguageServer-neovim: Start language servers.
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python': [],
    \ }

" LanguageServer-neovim: Add keybindings.
nnoremap <F5> :call LanguageClient_contextMenu()<CR>

" LanguageServer-neovim: fixup colors.
highlight ALEErrorSign   cterm=bold ctermbg=238 ctermfg=1
highlight ALEWarningSign cterm=bold ctermbg=238 ctermfg=3
highlight ALEInfoSign    cterm=bold ctermbg=238 ctermfg=8

" signify: only try git
let g:signify_vcs_list = [ 'git' ]
" signify: don't show number of lines that were removed
let g:signify_sign_show_count = 0

" signify: use heavier signs (probably unnecessary on retina displays)
let g:signify_sign_add               = '✚'
let g:signify_sign_delete            = '▁'
let g:signify_sign_delete_first_line = '▔'
let g:signify_sign_change            = '•' " options: ! ≠ • ~
" let g:signify_sign_changedelete      = g:signify_sign_change

" signify: fixup colors
highlight SignifySignAdd             cterm=bold ctermbg=238 ctermfg=2
highlight SignifySignChange          cterm=bold ctermbg=238 ctermfg=3
highlight SignifySignDelete          cterm=bold ctermbg=238 ctermfg=1
highlight SignifySignChangeDelete    cterm=bold ctermbg=238 ctermfg=3
highlight SignifySignDeleteFirstLine cterm=bold ctermbg=238 ctermfg=1

" vimtex: neovim-specific config
"let g:vimtex_compiler_progname = 'nvr'
" vimtex: sometimes vim incorrectly categorizes latex as plain tex. set tex
" flavor explicitly
let g:tex_flavor='latex'
" vimtex: conceal only current line
set conceallevel=1
let g:tex_conceal='abdmg'

" --------------
"  Key Bindings
" --------------

" For fuzzy file finding.
nnoremap <C-p> :FuzzyOpen<CR>

