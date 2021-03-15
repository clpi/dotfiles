au FileType rust nmap <silent> <leader>rc :Ccheck<CR>
au FileType rust nmap <silent> <leader>rr :Crun<CR>
au FileType rust nmap <silent> <leader>rb :Cbuild<CR>
au FileType rust nmap <silent> <leader>rt :e Carrust.toml<CR>

" --------------- rust MAPS ---------------
"
autocmd FileType rust nmap <c-space>r :Crun<CR>
autocmd FileType rust nmap <c-space>b :Cbuild<CR>
autocmd FileType rust nmap <c-space>c :Ccheck<CR>
autocmd FileType rust nmap <c-space>t :Ctest<CR>
autocmd FileType rust nmap <c-space>d :Cdoc<CR>
autocmd FileType rust nmap <c-space>s :CocCommand rust-analyzer.ssr<CR>

autocmd FileType rust nmap <c-space><c-b> :Cbench<CR>
autocmd FileType rust nmap <c-space><c-c> :Cclean<CR>
autocmd FileType rust nmap <c-space><c-r> :CocCommand rust-analyzer.run<CR>
autocmd FileType rust nmap <c-space><c-d> :CocCommand rust-analyzer.openDocs<CR>
autocmd FileType rust nmap <c-space><c-s> :CocCommand rust-analyzer.showReferences<CR>

autocmd FileType rust nmap <c-space><space>d :CocCommand rust-analyzer.debugSingle<CR>
autocmd FileType rust nmap <c-space><space>r :CocCommand rust-analyzer.runSingle<CR>
