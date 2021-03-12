" autocmd BufRead,BufNewFile *.md setlocal spell
augroup CocDisableFileTypes
    autocmd FileType json syntax match Comment +\/\/.\+$+
    autocmd FileType python CocEnable
    autocmd FileType javascript CocEnable
    autocmd FileType rust CocEnable
    autocmd FileType go CocEnable
    autocmd FileType html CocEnable
    autocmd FileType markdown CocDisable
    autocmd FileType vimwiki CocDisable
    autocmd FileType text CocDisable
    autocmd FileType rst CocDisable
    autocmd FileType json CocDisable
    autocmd FileType markdown setlocal signcolumn=no cmdheight=1
    autocmd FileType vimwiki setlocal signcolumn=no cmdheight=1
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2
    autocmd FileType json setlocal ts=2 sts=2 sw=2
    autocmd FileType html setlocal ts=2 sts=2 sw=2
    autocmd FileType yml setlocal ts=2 sts=2 sw=2
    autocmd FileType toml setlocal ts=2 sts=2 sw=2
    autocmd FileType vue setlocal ts=2 sts=2 sw=2
    autocmd FileType svelte setlocal ts=2 sts=2 sw=2
    autocmd FileType scss setlocal ts=2 sts=2 sw=2
    autocmd FileType dart setlocal ts=2 sts=2 sw=2
    autocmd FileType yaml.docker-compose setlocal ts=2 sts=2 sw=2
augroup END

" Move to directory for each buffer
" autocmd vimrc BufEnter * silent! lcd %:p:h


