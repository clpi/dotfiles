"
" ------------------- XXX NERDTREE -----------------------------
"" let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
"
" ----------------------XXX DADBOD UI ----------------------------
 let g:db_ui_show_database_icon = 1
 let g:db_ui_use_nerd_fonts = 1
" --------------------  XXX WINTABS ----------------------------
let g:wintabs_ui_modified=' •'
let g:wintabs_ui_readonly=' '
let g:wintabs_ui_buffer_name_format= ' %t '
let g:wintabs_ui_vimtab_name_format='%n'
" let g:wintabs_ui_vimtab_name_format=' %n'
" hi link WintabsActive TablineSel
" hi link WintabsActiveNC TAblineSel
" hi link WintabsActive PMenuSel
" hi link WintabsActiveNC PMenuSel
" hi link WintabsInactive TabLine
" hi link WintabsInactiveNC TabLine
" hi link WintabsArrow TabLineFill
" hi link WintabsEmpty TabLine
" hi link WintabsActiveSepInactive TabLine
" hi link WintabsActiveSepEmpty TabLine
" hi link WintabsInactiveSepEmpty TabLine
" hi link WintabsInactiveSepActive TabLine

" ---------- EMMET --------------------------
let g:user_emmet_leader_key='<C-m>'

" _-------------------XXX ANYJUMP OPTS/MAPS (,j) ------------------

let g:vimtex_view_method = 'zathura'
let g:any_jump_disable_default_keybindings = 1

nnoremap ,jj :AnyJump<CR>
" Visual mode: jump to selected text in visual mode
xnoremap ,jj :AnyJumpVisual<CR>
" Normal mode: open previous opened file (after jump)
nnoremap ,j, :AnyJumpBack<CR>
" Normal mode: open last closed search window again
nnoremap ,jl :AnyJumpLastResults<CR>
" let g:minimap_highlight="Directory"
" let g:minimap_auto_start=1
" let g:minimap_width = 5

" let g:polyglot_disabled = ['haskell', 'markdown']
" ------------- VIM ZETTEL -----------------------------------


" ------------------- CALENDAR ---------------------------
let g:calendar_date_month_name = 1
" let g:calendar_google_calendar = 1
" let g:calendar_google_task = 1
" let g:calendar_google_api_key = '...'
" let g:calendar_google_client_id = '....apps.googleusercontent.com'
" let g:calendar_google_client_secret = '...'
"
" --------------XXX VISTA -------------

 let g:vista#renderer#enable_icon = 1
 let g:vista_default_executive = 'ctags'
 let g:vista_echo_cursor_strategy = 'floating_win'
 let g:vista_vimwiki_executive = 'markdown'

" _------------ XXX Smoothie --------------
" let g:smoothie_no_default_mappings = v:true
"
" ------------- XXX TAGBAR --------------
" TODO tagbar
 let g:tagbar_width     = 30
 let g:tagbar_autoclose = 0
 let g:tagbar_autofocus = 0
 let g:tagbar_compact   = 1
"
" ------------------- NVIM GDB --------------------

function! NvimGdbNoTKeymaps()
  tnoremap <silent> <buffer> <esc> <c-\><c-n>
endfunction
let g:nvimgdb_config_override = {
  \ 'key_next': 'n',
  \ 'key_step': 's',
  \ 'key_finish': 'f',
  \ 'key_continue': 'c',
  \ 'key_until': 'u',
  \ 'key_breakpoint': 'b',
  \ 'set_tkeymaps': "NvimGdbNoTKeymaps",
  \ }

