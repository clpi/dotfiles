let g:nvimhsPluginStarter=nvimhs#stack#pluginstarter()
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
let g:cabal_indent_section = 2

" Automatically reload on save
" au BufWritePost *.hs InteroReload

" " Lookup the type of expression under the cursor
" au FileType haskell nmap <silent> <c-space>t     <Plug>InteroGenericType
" au FileType haskell nmap <silent> <c-space><c-t> <Plug>InteroType
" " Insert type declaration
" au FileType haskell nnoremap <silent> <c-space>n :InteroTypeInsert<CR>
" " Show info about expression or type under the cursor
" au FileType haskell nnoremap <silent> <c-space>i :InteroInfo<CR>
" " Open/Close the Intero terminal window
" au FileType haskell nnoremap <silent> <c-space>o :InteroOpen<CR>
" au FileType haskell nnoremap <silent> <c-space>c :InteroHide<CR>

" " Reload the current file into REPL
" au FileType haskell nnoremap <silent> <c-space>r :InteroLoadCurrentFile<CR>
" " Jump to the definition of an identifier
" au FileType haskell nnoremap <silent> <c-space>d :InteroGoToDef<CR>
" " Evaluate an expression in REPL
" au FileType haskell nnoremap <silent> <c-space>e :InteroEval<CR>

" " Start/Stop Intero
" au FileType haskell nnoremap <silent> <c-space><CR> :InteroStart<CR>
" au FileType haskell nnoremap <silent> <c-space><BS> :InteroKill<CR>

" " Reboot Intero, for when dependencies are added
" au FileType haskell nnoremap <silent> <leader><c-r> :InteroKill<CR> :InteroOpen<CR>

" " Managing targets
" " Prompts you to enter targets (no silent):
" au FileType haskell nnoremap <c-space>t :InteroSetTargets<CR>

" " Run the spec in the current file
" au FileType haskell nnoremap <silent> <c-space>s :InteroSend hspec spec<CR>

