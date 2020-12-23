"" ---------TOGGLE TERMINAL (SPC t t) ----------------------
let s:terminal_window = -1
let s:terminal_buffer = -1
let s:terminal_job_id = -1
function! TerminalOpen()
  if !bufexists(s:terminal_buffer)
    new terminal
    execute 'res -9'
    let s:terminal_job_id = termopen('zsh', { 'detach': 1 })
    silent file Terminal\ 1
    let s:terminal_window = win_getid()
    let s:terminal_buffer = bufnr('%')
    set nobuflisted
  else
    if !win_gotoid(s:terminal_window)
      split
      execute 'res -9'
      buffer Terminal\ 1
     let s:terminal_window = win_getid()
    endif
  endif
endfunction
function! TerminalToggle()
  if win_gotoid(s:terminal_window)
    call TerminalClose()
  else
    call TerminalOpen()
  endif
endfunction
function! TerminalClose()
  if win_gotoid(s:terminal_window)
    hide
  endif
endfunction
function! TerminalExec(cmd)
  if !win_gotoid(s:terminal_window)
    call TerminalOpen()
  endif
  call jobsend(s:terminal_job_id, "clear\n")
  call jobsend(s:terminal_job_id, a:cmd . "\n")
  normal! G
  wincmd p
endfunction
augroup Terminal
    au!
    autocmd TermOpen  ,* setlocal nonumber norelativenumber
augroup END

function! EnableCleanUI() abort
  setlocal listchars=
    \ nonumber
    \ norelativenumber
    \ nowrap
    \ winfixwidth
    \ laststatus=0
    \ noshowmode
    \ noruler
    \ scl=no
    \ colorcolumn=
  autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endfunction

function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction

let s:netrw = 1
function! ToggleNetrw()
    if s:netrw  == 0
        let s:netrw = 1
        exe netrw_hide
        set noshowmode
        " set noruler " TODO consider leaving this on
        " set nonumber " TODO consider leaving this o
        set scl=no
        set laststatus=0
        set noshowcmd
        set colorcolumn=
    else
        exe "normal: Vex"
        set number
        set showmode
        set ruler
        set scl=yes
        set laststatus=2
        set showcmd
        set colorcolumn
    endif
endfunction

" ---------- RETURN TO LAST LOCATION -----------------
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"-------- TRIM TAILING WHITESPACE ON WRITE _------------------------
autocmd BufWritePre * %s/\s\+$//e
