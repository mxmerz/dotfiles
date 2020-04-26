" LanguageClient-neovim
" Required for operations modifying multiple buffers like rename.
"set hidden

"let g:LanguageClient_serverCommands = {
    "\ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    "\ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    "\ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    "\ 'python': ['/usr/local/bin/pyls'],
    "\ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    "\ }

"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" let g:lsp_signs_information = {'text': '✗'}

" Configure LSP for swift
"if executable('sourcekit-lsp')
	"au User lsp_setup call lsp#register_server({
		"\ 'name': 'sourcekit-lsp',
		"\ 'cmd': {server_info->['sourcekit-lsp']},
		"\ 'whitelist': ['swift'],
		"\ })
"endif

" Lsp signs
let g:lsp_signs_priority = 11 " default prio is 10
let g:lsp_signs_error = {'text': 'E'}
let g:lsp_signs_warning = {'text': 'W'}
let g:lsp_signs_information = {'text': 'i'}
let g:lsp_signs_hint = {'text': '➤'}
