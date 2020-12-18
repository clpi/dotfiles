function! CocCurrentFunction()
    let curr = get(b:, 'coc_current_function', '')
    if empty(curr) | return '' | endif
    return ' ' . get(b:, 'coc_current_function', '')
endfunction
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, '•' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, '•' . info['warning'])
  endif
  if get(info, 'fix', 0)
    call add(msgs, '•' . info['fix'])
  endif
  if get(info, 'hint', 0)
    call add(msgs, '•' . info['hint'])
  endif
  " 
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction
function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . '  ' . &filetype : '') : ''
endfunction
function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol() . ' ') : ''
endfunction
let s:indicator_warnings = get(g:, 'lightline#coc#indicator_warnings', '•')
let s:indicator_errors = get(g:, 'lightline#coc#indicator_errors', '×')
let s:indicator_ok = get(g:, 'lightline#coc#indicator_ok','✓')
function! LightLineCoc()
    " if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {}))
    if empty(get(g:, 'coc_status', ''))
        return ''
    endif
    " return '🅒 ' . trim(coc#status())
    return trim(coc#status())
endfunction
function! s:lightline_coc_diagnostic(kind, sign) abort
  let info = get(b:, 'coc_diagnostic_info', 0)
  if empty(info) || get(info, a:kind, 0) == 0
    return ''
  endif
  try
    let s = g:coc_user_config['diagnostic'][a:sign . 'Sign'] . '•'
  catch
    let s = ''
  endtry
  return printf('%s %d', s, info[a:kind])
endfunction
"  . '×' . '•' . '✓' . 'o' 
" function! LightlineTS() abort
"     let fn = ' ' . s:nvim_treesitter#statusline(90)
"     return fn
" endfunction
function! LightlineCocFixes() abort
  let fix = lightline_coc_diagnostic('fix', 'fix')
  if empty(fix) | return '' | endif
  return '•' . fix
  " return s:lightline_coc_diagnostic('error', 'error')
endfunction
function! LightlineCocErrors() abort
  let error = s:lightline_coc_diagnostic('error', 'error')
  if empty(error) | return '' | endif
  " return ' ' . error
  return '•' . error
  " return s:lightline_coc_diagnostic('error', 'error')
endfunction
function! LightlineCocWarnings() abort
  let warn = s:lightline_coc_diagnostic('warning', 'warning')
  if empty(warn) | return '' | endif
  " return ' ' . fix
  return '•' . warn
  " return s:lightline_coc_diagnostic('warning', 'warning')
endfunction
function! LightlineCocHints() abort
  let hints = s:lightline_coc_diagnostic('hint', 'hint')
  if empty(hints) | return '' | endif
  return '•' . hints
  " return s:lightline_coc_diagnostic('hints', 'hint')
endfunction
function! LightlineReadonly()
  return ' ' . &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction
function! LightlineModified()
    return &modifiable && &modified ? '•' : ''
endfunction
function! LightlineMode()
  let fname = expand('%:t')
  return fname =~# '^__Tagbar__' ? '' :
        \ fname ==# '[coc-explorer]-1' ? ' ' :
        \ fname ==# '[calendar]' ? '' :
        \ fname ==# '__Gundo__' ? 'Gundo' :
        \ fname ==# '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~# 'NERD_tree' ? 'NERDTree' :
        \ &ft ==# 'unite' ? 'Unite' :
        \ &ft ==# 'vimfiler' ? 'VimFiler' :
        \ &ft ==# 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction
function! LightlineGit() abort
    if exists("*FugitiveHead")
        return !empty(FugitiveHead()) && winwidth(0) > 60 ? '⎇  ' . FugitiveHead() : ''
    endif
    return ''
endfunction
function! LightlineFilename()
  let modified = &modified ? ' •' : ''
  let filetype = expand('%:t')
  let fname = filetype ==# '[coc-explorer]-1' ? "" :
        \ filetype ==# 'vimwiki' ? '':
        \ filetype =~# 'calendar' ? "" :
        \ filetype =~# '^__Tagbar__' ? '' :
        \ filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? ' ' . expand('%:t') : ''
   return fname . modified
endfunction
augroup lightline#refresh
    autocmd User AsyncRunStart call lightline#update()
    autocmd User AsyncRunStop call lightline#update()
    autocmd User CocDiagnosticChange,CocStatusChange call lightline#update()
augroup END
let s:indicator_run = get(g:, 'lightline#asyncrun#indicator_run', 'Running...')
let s:indicator_none = get(g:, 'lightline#asyncrun#indicator_none', 'No Jobs')
function! LightlineStatus()
    let l:status = asyncrun#status()
    if l:status == 'none'
            return s:indicator_none
    elseif l:status == 'run'
            return s:indicator_run
    else
            return l:status
    endif
endfunction

let s:symbols = {
                \ 'linenr':       '☰',
                \ 'branch':       '⎇ ',
                \ 'readonly':     '',
                \ 'clipboard':    '🅒  ',
                \ 'question':      '',
                \ 'tool':          '',
                \ 'added':         "",
                \ 'paste':        '🅟  ',
                \ 'ellipsis':     '…',
                \ 'renamed':      '"',
                \ }
"set to_chars="  " 
"set flag_chars =      "
" set status_chars = +
"ifdef crypt_chars set crypt_chars = " "
" let g:lightline = { 'colorscheme': 'challenger_deep'}
"let g:lightline = { 'colorscheme': 'dogrun'} ☰
" let g:lightline = { 'colorscheme': 'sonokai'}
let g:lightline = {
      \ 'colorscheme': 'challenger_deep',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitbranch',  'readonly', 'filename'],
      \             ['coc', ] ,
      \             [ 'currentfunction' ],
      \           ],
      \   'right': [ [ 'lineinfo', ],
      \              [ 'filetype',  'ts', 'percent'],
      \              [ 'coc_info', 'coc_hint', 'coc_error', 'coc_warning', 'file_format' ] ] },
      \ 'component': {
	  \   'lineinfo': ' %2l:%-2v%<',
      \   'paste': '  %{&paste?"🅟":""}',
      \   'percent': '☰ %3p%%',
      \  },
      \ 'component_function': {
      \   'coc': 'LightLineCoc',
      \   'mode': 'LightlineMode',
      \   'currentfunction': 'CocCurrentFunction',
      \   'filename': 'LightlineFilename',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'gitbranch': 'LightlineGit',
      \   'readonly': 'LightlineReadOnly',
      \ },
      \ 'component_expand': {
      \   'coc_error'        : 'LightlineCocErrors',
      \   'coc_warning'      : 'LightlineCocWarnings',
      \   'coc_info'         : 'LightlineCocInfos',
      \   'coc_hint'         : 'LightlineCocHints',
      \ },
      \ 'component_type': {
      \   'coc_error'        : 'error',
      \   'coc_warning'      : 'warning',
      \   'coc_info'         : 'include',
      \   'coc_hint'         : 'middle',
      \ },
      \ 'mode_map': {
       \ 'n' : ' NML',
       \ 'i' : ' INS',
       \ 'R' : ' RPL',
       \ 'v' : ' VIS',
       \ 'V' : ' VIL',
       \ "\<C-v>": ' VIB',
       \ 'c' : ' CMD',
       \ 's' : ' SLI',
       \ 'S' : ' SLL',
       \ "\<C-s>": ' SLB',
       \ 't': ' TRM',
      \ },
      \ }
      " \ 'i' : ' INS',
      " \ 'R' : ' RPL',
      " \ 'v' : ' VIS',
      " \ 'V' : ' VIL',
      " \ "\<C-v>": ' VIB',
      " \ 'c' : ' CMD',
      " \ 's' : ' SLI',
      " \ 'S' : ' SLL',
      " \ "\<C-s>": ' SLB',
      " \ 't': ' TRM',
      "\   'filename':  '  %t',
      "
      " \ 'n' : ' ',
      " \ 'i' : ' ',
      " \ 'R' : ' ',
      " \ 'v' : ' ',
      " \ 'V' : ' ',
      " \ "\<C-v>": ' ',
      " \ 'c' : ' ',
      " \ 's' : ' ',
      " \ 'S' : ' ',
      " \ "\<C-s>": ' ',
      " \ 't': ' ',
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'filetype' ],
    \            [ 'percent' ] ]
    \ }




