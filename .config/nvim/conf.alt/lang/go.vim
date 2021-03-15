autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>
autocmd BufWritePre *.go :call CocAction('organizeImport')

" TODO turn of vim.go default mappings
" --------------- GO MAPS ---------------
autocmd FileType go nmap <c-space>b :GoBuild<CR>
autocmd FileType go nmap <c-space>r :GoRun<CR>
autocmd FileType go nmap <c-space>d :GoDef<CR>
autocmd FileType go nmap <c-space>g :GoGenerate<CR>
autocmd FileType go nmap <c-space>i :GoInfo<CR>
autocmd FileType go nmap <c-space>t :GoTest<CR>
autocmd FileType go nmap <c-space>c :GoCallers<CR>

autocmd FileType go nmap <c-space><space>i :GoInstall<CR>
autocmd FileType go nmap <c-space><space>r :GoRename<CR>
autocmd FileType go nmap <c-space><space>t :GoTestFunc<CR>
autocmd FileType go nmap <c-space><space>c :GoTestCompile<CR>

autocmd FileType go nmap <c-space><c-i> :GoImplements<CR>
autocmd FileType go nmap <c-space><c-d> :GoDescribe<CR>
autocmd FileType go nmap <c-space><c-c> :GoCallees<CR>
autocmd FileType go nmap <c-space><c-r> :GoReferrers<CR>

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_def_mapping_enabled = 0

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" “ Map keys for most used commands.
" “ Ex: `\b` for building, `\r` for running and `\b` for running test.
" autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
" autocmd FileType go nmap <leader>r  <Plug>(go-run)
" autocmd FileType go nmap <leader>t  <Plug>(go-test)
"
"
