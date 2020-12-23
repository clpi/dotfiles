"" coc.nvim config -----------------
let g:coc_global_extensions = [
  \ 'coc-highlight',
  \ 'coc-r-lsp',
  \ 'coc-rest',
  \ 'coc-python',
  \ 'coc-post',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-html',
  \ 'coc-sql',
  \ 'coc-vetur',
  \ 'coc-svelte-fork',
  \ 'coc-xml',
  \ 'coc-snippets',
  \ 'coc-utils',
  \ 'coc-lists',
  \ 'coc-elixir',
  \ 'coc-clangd',
  \ 'coc-actions',
  \ 'coc-explorer',
  \ 'coc-jest',
  \ 'coc-inline-jest',
  \ 'coc-vimtex',
  \ 'coc-import-cost',
  \ 'coc-julia',
  \ 'coc-sh',
  \ 'coc-docker',
  \ 'coc-deno',
  \ 'coc-git',
  \ 'coc-template',
  \ 'coc-bookmark',
  \ 'coc-template',
  \ 'coc-db',
  \ 'coc-floatinput',
  \ 'coc-tag',
  \ 'coc-gitignore',
  \ 'coc-vimlsp',
  \ 'coc-tasks',
  \ 'coc-yank',
  \ 'coc-todolist',
  \ 'coc-flutter',
  \ 'coc-flutter-tools',
  \ ]
" \ 'coc-highlight',
" \ 'coc-prettier',
  " \ 'coc-tsserver',
  " \ 'coc-tslint-plugin',
" coc-rome, coc-flow, coc-flutter, coc-fsharp, coc-pairs (no autopairs)
" coc-yank, coc-texlab, coc-fzf-preview, coc-webpack, coc-bibtex, coc-diagnostic, coc-haxe
" cc-gitignore, coc-lit-html, coc-purity, coc-ccls, coc-rest-client
" \ 'coc-rust-analyzer',

let g:coc_explorer_global_presets = {
\   'floating': {
\      'position': 'floating',
\      'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

nnoremap <silent> ,er :e<space>scp://
nmap <silent><nowait> <space>n :CocCommand explorer --toggle --sources=buffer+,file+ --width=30<CR>
nmap <silent><nowait> <space>N :CocCommand explorer --toggle --sources=buffer+,file+ --width=30<CR>
nmap <silent><nowait> ,ee :CocCommand explorer --toggle --sources=buffer+,file+ --width=30<CR>
nmap <silent><nowait> ,e, :CocCommand explorer --preset floating<CR>
nmap <silent> ,eb :CocCommand explorer --preset floating --sources=buffer+<CR>
nmap <silent> ,ef :CocCommand explorer --preset floating --sources=file+<CR>
nmap <silent> ,em :CocCommand explorer --preset floating --sources=bookmark+<CR>
nmap <silent> ,es :CocCommand explorer --preset simplify<CR>
nmap <silent> ,en :CocCommand explorer<CR>
" nmap <silent> ,nn :call ToggleNetrw(0)<CR>

augroup CocDisableFileTypes
    autocmd FileType json syntax match Comment +\/\/.\+$+
    autocmd FileType python CocEnable
    autocmd FileType javascript CocEnable
    autocmd FileType rust CocEnable
    autocmd FileType go CocEnable
    autocmd FileType html CocEnable
    autocmd FileType markdown CocEnable
    " autocmd FileType vimwiki CocDisable set breakindent sc=no
    autocmd FileType text CocDisable
    autocmd FileType rst CocDisable
    autocmd FileType json CocEnable
    autocmd FileType markdown setlocal cmdheight=1
    " autocmd FileType vimwiki setlocal sc=yes cmdheight=1
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

hi link CocErrorHighlight DiffDelete
hi link CocMenuSel PMenu
 " dark cyan
hi link CocHintSign Operator
 " dark blue
hi link CocInfoSign Label
 " dark yellow
hi link CocWarningSign WarningMsg
" dark red
" hi link CocErrorSign ErrorMsg
hi link CocErrorSign Question
hi link CocExplorerGitPathChange DiffAdd
hi link CocExplorerGitContentChange WarningMsg
" hi link CocExplorerGitModified Identifier
hi link CocExplorerGitModified String
" hi link CocExplorerGitDeleted ErrorMsg
hi link CocExplorerGitDeleted Question

" _-------------- XXX COC COMPLETION ACTIONS ----------------
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
function! s:silent_organizeImport()
  silent! call CocAction('runCommand', 'editor.action.organizeImport')
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <silent><expr> <c-j>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr><c-k> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Remap <C-f> and <C-b> for scroll float windows/popups.
"" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
inoremap <silent><expr> <C-l> coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"" COC.NVIM LSP Type info actions(g) -------------------

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" NOTE TODO Turn on for highlight of same words!
autocmd CursorHold * silent call CocActionAsync('highlight')
function! s:init_explorer()
  set winblend=10
  nmap <buffer> <Leader>fg :call <SID>coc_list_current_dir('-I grep')<CR>
  nmap <buffer> <Leader>fG :call <SID>coc_list_current_dir('-I grep -regex')<CR>
  nmap <buffer> <C-p> :call <SID>coc_list_current_dir('files')<CR>
endfunction
" augroup CocExplorerCustom
"   autocmd BufEnter FileType coc-explorer setl ls=0
" augroup END
" --------------------XXX LSP actions ------------------------
command! CocInstallExtensions CocInstall
    \ coc-html coc-tag coc-lists coc-syntax coc-utils
    \ coc-json coc-css coc-python coc-actions coc-highlight coc-yank
    \ coc-vimlsp coc-lists coc-git coc-rust-analyzer coc-db coc-sql
    \ coc-gitignore coc-snippets coc-explorer coc-diagnostic

" -------------------- XXX LSP COMMANDS ------------------------
nnoremap <silent> <leader>i :call CocActionAsync('doHover')<cr>
nnoremap <silent> ,d :call <SID>show_documentation()<CR>
nmap <silent> <space>gd <Plug>(coc-definition)
nmap <silent> <space>gD <Plug>(coc-declaration)
nmap <silent> <space>gt <Plug>(coc-type-definition)
nmap <silent> <space>gi <Plug>(coc-implementation)
nmap <silent> <space>gr <Plug>(coc-references)
nmap <silent> <space>d, <Plug>(coc-diagnostic-prev)
nmap <silent> <space>d. <Plug>(coc-diagnostic-next)

nmap <silent> ,<space>, <Plug>(coc-diagnostic-prev)
nmap <silent> ,<space>. <Plug>(coc-diagnostic-next)
nmap <silent> ,<space>l :<C-u>call CocActionAsync('codeLensAction')<CR>
nmap <silent> ,<space>d <Plug>(coc-definition)
nmap <silent> ,<space>D <Plug>(coc-declaration)
nmap <silent> ,<space>t <Plug>(coc-type-definition)
nmap <silent> ,<space>c <Plug>(coc#float#close_all)

" ------ ,l / ,a CocAction and CodeLens ----
nmap <silent> ,l :<C-u>call CocActionAsync('codeLensAction')<CR>
if has('nvim')
  nmap cca :CocCommand actions.open<CR>
  xmap cca :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
else
  nmap cca :CocAction<CR>
  vmap cca :CocAction<CR>
endif
nmap <silent> ,a :CocAction<CR>

" ------ <space>ca / <space>cl code-action and code-lens, fix ----
if has('nvim')
  nmap <silent> <space>cr <Plug>(coc-floatinput-rename)
else
  nmap <silent> <space>cr <Plug>(coc-rename)
endif
nmap <silent> <space>ca<space> <Plug>(coc-codeaction)
nmap <silent> <space>ca <Plug>(coc-codeaction-selected)
nmap <silent> <space>cA <Plug>(coc-codeaction-line)
nmap <silent> <space>cl <Plug>(coc-codelens-action)
nmap <silent> <space>cq <Plug>(coc-fix-current)
nmap <silent> <space>cR <Plug>(coc-refactor)
nmap <silent> <space>cf <Plug>(coc-format-selected)
nmap <silent> <space>cf<space> <Plug>(coc-format)
nmap <silent> <space>coi :CocCommand editor.action.organizeImport<CR>

nmap <silent> <space>ccp :call CocAction("pickColor")<CR>
nmap <silent> <space>ccP :call CocAction("colorPresentation")<CR>
nmap <space>gc <Plug>(coc-git-commit)
nmap <space>gs :CocList gstatus<CR>

nmap <silent> <space>cgr <Plug>(coc-references)
nmap <silent> <space>cgd <Plug>(coc-definition)
nmap <silent> <space>cgD <Plug>(coc-declaration)
nmap <silent> <space>cgt <Plug>(coc-type-definition)
nmap <silent> <space>cgi <Plug>(coc-implementation)
nmap <silent> <space>cgp <Plug>(coc-diagnostic-prev)
nmap <silent> <space>cg, <Plug>(coc-diagnostic-prev)
nmap <silent> <space>cgn <Plug>(coc-diagnostic-next)
nmap <silent> <space>cg. <Plug>(coc-diagnostic-next)
nmap <silent> <tab> <Plug>(coc-diagnostic-next)
nmap <silent> <s-tab> <Plug>(coc-diagnostic-prev)
nmap <silent> <space>d< <Plug>(coc-diagnostic-prev-error)
nmap <silent> <space>d> <Plug>(coc-diagnostic-next-error)

vmap <silent> <space>cf  <Plug>(coc-format-selected)

nmap <silent> <space>a :CocAction<CR>
nmap <silent> c,, :CocAction<CR>
xmap c,f  <Plug>(coc-format-selected)
nmap c,f  <Plug>(coc-format-selected)
vmap <space>=  <Plug>(coc-format-selected)
nmap <space>=  <Plug>(coc-format-selected)
nmap c,x  <Plug>(coc-fix-current)
nmap c,A  <Plug>(coc-codeaction)
xmap c,a  <Plug>(coc-codeaction-selected)
nmap c,a  <Plug>(coc-codeaction-selected)
nmap <silent> c,rf  :<C-u>CocCommand workspace.renameCurrentFile<CR>
nmap <silent> c,rw  :<C-u>CocCommand document.renameCurrentWord<CR>
nmap <silent> c,rr <Plug>(coc-rename)
nmap <silent> c,tg <ESC>:CocCommand tags.generate<CR>
nmap <silent> c,F :CocFix<CR>
xmap c,fi <Plug>(coc-funcobj-i)
xmap c,fa <Plug>(coc-funcobj-a)
omap c,fi <Plug>(coc-funcobj-i)
omap c,fa <Plug>(coc-funcobj-a)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" -------------------- XXX LSP COMMANDS ------------------------
" Use `:Format` to format current buffer
" Use `:Fold` to fold current buffer
" use `:OR` for organize import of current buffer
command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Add status line support, for integration with other plugin, checkout `:h coc-status`
" -------------------XXX ,, : CocFzfList ----------------------

nnoremap <silent> ,,<space> :<C-u>CocList<CR>
nnoremap <silent> ,,a       :<C-u>CocList actions<CR>
nnoremap <silent> ,,b       :<C-u>CocList buffers<CR>
nnoremap <silent> ,,d       :<C-u>CocList diagnostics<CR>
nnoremap <silent> ,,D       :<C-u>CocList diagnostics --current-buf<CR>
nnoremap <silent> ,,c       :<C-u>CocList commands<CR>
nnoremap <silent> ,,v       :<C-u>CocList vimcommands<CR>
nnoremap <silent><nowait> ,,C       :<C-u>CocList colors<CR>
nnoremap <silent><nowait> ,,e       :<C-u>CocList extensions<CR>
nnoremap <silent> ,,f       :<C-u>CocList files<CR>
nnoremap <silent> ,,g       :<C-u>CocList gfiles<CR>
nnoremap <silent> ,,G       :<C-u>CocList gstatus<CR>
nnoremap <silent> ,,.       :<C-u>CocList grep<CR>
nnoremap <silent> ,,l       :<C-u>CocList lines<CR>
nnoremap <silent> ,,L       :<C-u>CocList locations<CR>
nnoremap <silent> ,,<tab>       :<C-u>CocList lists<CR>
nnoremap <silent> ,,.       :<C-u>CocList --normal -I --input='.expand('<cword>').' grep'<CR>

nnoremap <silent> ,,k       :<C-u>CocList maps<CR>
nnoremap <silent> ,,M       :<C-u>CocList marketplace<CR>
nnoremap <silent> ,,o       :<C-u>CocList outline<CR>
nnoremap <silent> ,,s       :<C-u>CocList symbols<CR>
nnoremap <silent> ,,q       :<C-u>CocList quickfix<CR>
nnoremap <silent> ,,m       :<C-u>CocList mru<CR>
nnoremap <silent> ,,h       :<C-u>CocList history<CR>
nnoremap <silent> ,,H       :<C-u>CocList cmdhistory<CR>
nnoremap <silent> ,,;       :<C-u>CocList cmdhistory<CR>
nnoremap <silent> ,,r       :<C-u>CocList<CR>
nnoremap <silent> ,,v       :<C-u>CocList vimcommands<CR>

" Using CocList
" Show all diagnostics
" -------------------XXX VANILLA COCLIST MAPPINGS -----------------------
nnoremap <silent> ,ca :<C-u>CocList actions<cr>
nnoremap <silent> ,cb :<C-u>CocList buffers<cr>
nnoremap <silent> ,cc  :<C-u>CocList commands<cr>
nnoremap <silent> ,cd :<C-u>CocList diagnostics<cr>
nnoremap <silent> ,ce  :<C-u>CocList extensions<cr>
nnoremap <silent> ,cf  :<C-u>CocList files<cr>
nnoremap <silent> ,cg  :<C-u>CocList grep<cr>
nnoremap <silent> ,cH :<C-u>CocList helptags<CR>
nnoremap <silent> ,chc  :<C-u>CocList cmdhistory<cr>
nnoremap <silent> ,cl :<C-u>CocList list<CR>
nnoremap <silent> ,ck :<C-u>CocList maps<CR>
nnoremap <silent> ,cm :<C-u>CocList marketplace<CR>
nnoremap <silent> ,co  :<C-u>CocList outline<cr>
nnoremap <silent> ,cs  :<C-u>CocList -I symbols<cr>
nnoremap <silent> ,cq :<C-u>CocList quickfix<CR>
nnoremap <silent> ,c.  :<C-u>CocNext<CR>
nnoremap <silent> ,c,  :<C-u>CocPrev<CR>
nnoremap <silent> ,cr  :<C-u>CocListResume<CR>
nnoremap <silent> ,conf :<C-u>CocConfig<CR>
nnoremap <silent> ,ct :<C-u>CocList tags<CR>

" ---------- XXX C-s : Session commands ---------"
nnoremap <silent> <c-s>         :CocCommand session.save<space><CR>
nnoremap <silent> ,ss           :CocCommand session.save<space><CR>
nnoremap <silent> <c-s><c-s>    :CocCommand session.save<space><CR>
nnoremap <silent> <c-s>s        :CocCommand session.save<space><CR>
nnoremap <silent> <c-s><c-l     :CocCommand session.load<CR>
nnoremap <silent> <c-s>l        :CocCommand session.load<CR>
nnoremap <silent> ,sl           :CocCommand session.load<CR>
nnoremap <silent> <space>,s           :CocCommand session.load<CR>
nnoremap <silent> ,s,           :CocList sessions<CR>
nnoremap <silent> <c-s><cr>     :CocList sessions<CR>
nnoremap <silent> <c-s><space>  :CocList sessions<CR>

" Coc list (default, no clap)
" nnoremap <silent> space><space><space> <esc>:CocList lists<cr>
" nnoremap <silent> <space>a<space> <ESC>:CocAction<CR>
" nnoremap <silent> <space>c<space> <ESC>:CocList commands<CR>

" nnoremap <silent> ,<space>S <ESC>:CocList sessions<CR>
" nnoremap <silent> ,<space>ss  :<C-u>CocCommand session.save<CR>
" nnoremap <silent> ,<space>sl  :<C-u>CocCommand session.load<CR>
" nnoremap <silent> ,<space>sr :<C-u>CocCommand session.restart<CR>

" if has('nvim')
"   function! s:is_float(winnr) abort
"     let winid = win_getid(a:winnr)
"     return !empty(nvim_win_get_config(winid)['relative'])
"   endfunction

"   function s:quit()
"     let nr = winnr('$')
"     while nr > 0
"       if !s:is_float(nr)
"         if nr == 1
"           call coc#util#close_floats()
"           break
"         endif
"       endif
"       let nr -= 1
"     endwhile
"     :quit
"   endfunction

"   nmap <silent> <c-w>q :call <SID>quit()<CR>
"   nmap <silent> ZZ :call <SID>quit()<CR>
" endif
