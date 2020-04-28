" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Vim Git markers
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" Language Server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" Airline
Plug 'vim-airline/vim-airline'

" Language Syntax
" Elixir
Plug 'elixir-editors/vim-elixir'
" PlantUML
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

" NerdTree
Plug 'preservim/nerdtree'

" NerdCommenter
Plug 'preservim/nerdcommenter'

" Initialize plugin system
call plug#end()

