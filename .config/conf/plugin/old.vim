"--------------- IndentLine ---------------------------------
" let g:indentLine_conceallevel = 2
" let g:indentLine_char =''
" let g:indentLine_first_char = ''
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 1
" let g:indentLine_concealcursor = ""
"
" ------------- AIRLINE ----------------------------
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
"
" --------------- WHICHKEY -------------------------
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"
" -------------- ANYJUMMP ----------------------
" let g:dashboard_default_executive='clap'
let g:dashboard_default_header="garfield"
let g:dashboard_custom_shortcut={
  \ 'last_session'       : 'SPC S l',
  \ 'find_history'       : 'SPC f h',
  \ 'find_file'          : 'SPC f f',
  \ 'new_file'           : 'SPC b n',
  \ 'change_colorscheme' : 'SPC f C',
  \ 'find_word'          : 'SPC f r',
  \ 'book_marks'         : 'SPC f b',
  \ }
" let g:dashboard_custom_shortcut_icon['last_session'] = ' '
" let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
" let g:dashboard_custom_shortcut_icon['find_file'] = ' '
" let g:dashboard_custom_shortcut_icon['new_file'] = ' '
" let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
" let g:dashboard_custom_shortcut_icon['find_word'] = ' '
" let g:dashboard_custom_shortcut_icon['book_marks'] = ' '

let g:any_jump_disable_default_keybindings = 1
let g:any_jump_list_numbers = 0
let g:any_jump_references_enabled = 1
let g:any_jump_grouping_enabled = 0
let g:any_jump_preview_lines_count = 10
let g:any_jump_max_search_results = 10
let g:any_jump_search_prefered_engine = 'rg'
let g:any_jump_results_ui_style = 'filename_first'
let g:any_jump_colors = {
      \"plain_text":         "Comment",
      \"preview":            "Comment",
      \"preview_keyword":    "Operator",
      \"heading_text":       "Function",
      \"heading_keyword":    "Identifier",
      \"group_text":         "Comment",
      \"group_name":         "Function",
      \"more_button":        "Operator",
      \"more_explain":       "Comment",
      \"result_line_number": "Comment",
      \"result_text":        "Statement",
      \"result_path":        "String",
      \"help":               "Comment"
      \}
nnoremap ,jj :AnyJump<CR>
xnoremap ,jj :AnyJumpVisual<CR>
nnoremap ,j, :AnyJumpBack<CR>
nnoremap ,jl :AnyJumpLastResults<CR>

" -------------- XXX EASYMOTION ------------------------
" TODO Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
" nmap f <Plug>(easymotion-w)
" nmap ,f <Plug>(easymotion-prefix)
" nmap ,fs <Plug>(easymotion-overwin-f)
" nmap ,f, <Plug>(easymotion-overwin-f2)
" nmap ,fj <Plug>(easymotion-j)
" nmap ,fk <Plug>(easymotion-k)
