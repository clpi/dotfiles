"" FZF floating window (<Space>f/<Space>F) -------------------------
"let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
let $RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
let $FZF_DEFAULT_OPTS='--color=dark --layout=reverse --inline-info --margin=1,4'
if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
" let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6, 'border': 'rounded' } }
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
  let height = float2nr(40)
  let width = float2nr(120)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 10
  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
  call nvim_open_win(buf, v:true, opts)
endfunction
nnoremap <space>\ :Rg<CR>

if executable('rg')
    set grepprg=rg\ --vimgrep\ --hidden\ --no-ignore-vcs
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


command! -bang -nargs=* WikiRg call fzf#vim#grep('rg
      \ --column --line-number --no-heading --color=never
      \ --smart-case --type md <q-args> "/home/chrisp/wiki"',
      \ 1, fzf#vim#with_preview(), <bang>0)

"-----------------XXX <space>f : FZF alt ----------------------
nnoremap <silent> <space>fl       :Lines<CR>
nnoremap <silent> <space>fL       :CocFzfList locations<CR>
nnoremap <silent> <space>fk       :Maps<CR>
nnoremap <silent> <space>fm       :Marks<CR>
nnoremap <silent> <space>fn       :NV<CR>
nnoremap <silent> <space>ff       :Files<CR>
nnoremap <silent> <space>f:       :History:<CR>
nnoremap <silent> <space>f;       :History:<CR>
nnoremap <silent> <space>f/       :History/<CR>
nnoremap <silent> <space>ft       :Tags<CR>
nnoremap <silent> <space>fr       :Rg<CR>
nnoremap <silent> <space>fg       :GFiles<CR>
nnoremap <silent> <space>fG       :Commits<CR>
nnoremap <silent> <space>FG       :GitFiles<CR>
nnoremap <silent> <space>fb       :Buffers<CR>
nnoremap <silent> <space>fC       :Colors<CR>
nnoremap <silent> <space>fv       :Commands<CR>
nnoremap <silent> <space>fd       :<C-u>CocFzfList actions<CR>
nnoremap <silent> <space>fA       :Ag<CR>
nnoremap <silent> <space>fh       :History<CR>
nnoremap <silent> <space>fH       :Helptags<CR>
nnoremap <silent> <space>fd       :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <space>fD       :DBUIFindBuffer<CR>
nnoremap <silent> <space>fF       :FZF ~<CR>
nnoremap <silent> <space>f<tab>       :<C-u>CocFzfList lists<CR>
nnoremap <silent> <space>fo       :<C-u>CocFzfList outline<CR>
nnoremap <silent> <space>fc       :<C-u>CocFzfList commands<CR>
nnoremap <silent> <space>fs       :<C-u>CocFzfList symbols<CR>

" nnoremap <silent> q;              :History:<CR>
" nnoremap <silent> q/              :History/<CR>

nnoremap <silent> <space>f<space>g       :GFiles?<CR>


