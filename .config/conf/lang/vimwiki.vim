" ------------XXX Taskwiki ------------------
" let g:taskwiki_sort_orders={"C": "pri-"}
" let g:taskwiki_syntax = 'markdown'
" let g:taskwiki_markdown_syntax='markdown'
" let g:taskwiki_markup_syntax='markdown'

"--------------XXX NOTATIONAL VEL -------------
let g:nv_search_paths=['~/doc/wiki/pri/pri', '~/wiki/']

" -----------------vim settel--------------------------
" let g:zettel_options = [{"front_matter" : {"tags" : ""}, "template" :  "~/wiki/zettel.tpl"}]
" let g:zettel_format = '%Y%m%d%H%M%S'
" let g:zettel_format = "%d%m%y%H%M%S-%file_no"
let g:zettel_format = "%y%m%d%H%M%S-%file_no"
let g:zettel_fzf_command="rg --column --line-number --ignore-case --no-heading --color=always"
let g:zettel_default_mappings = 0
let g:zettel_options = [{
    \ "front_matter": [
    \     ["tags", ""], ["type", "note"]
    \ ],
    \ "template": "~/wiki/zettel/templ.tpl"
    \ }]
let g:zettel_fzf_options = ["--exact", "--tiebreak=end"]
let g:zettel_backlinks_title = "Backlinks"
let g:zettel_link_format = "[%title](%link)"
let g:vimwiki_markdown_link_ext = 1
augroup FileType vimwiki
    autocmd!
    autocmd FileType vimwiki imap <silent> ,,z [[<ESC><Plug>ZettelSearchMap
augroup END
nmap <silent> ,zn :ZettelNew<CR>
nmap <silent> ,zo :ZettelOpen<CR>
nmap <silent> ,zs :ZettelSearch<CR>
nmap <silent> ,zi :ZettelInsertNote<CR>
nmap <silent> ,zc :ZettelCapture<CR>
nmap <silent> <space>z<space> [[<esc><Plug>ZettelSearchMap
nmap <silent> <space>zT <Plug>ZettelYankNameMap
" xnoremap z :call zettel#vimwiki#zettel_new_selected()<CR>
xmap z <Plug>ZettelNewSelectedMap
nmap gZ <Plug>ZettelReplaceFileWithLink
nnoremap <leader>w/ :VimwikiSearchTags<space>
nnoremap <leader>w? :VimwikiSearch<space>
nnoremap <leader>wG :VimwikiRebuildTags!<cr>:VimwikiGenerateTagLinks<cr><c-l>
nnoremap <leader>zl :ZettelSearch<cr>
nnoremap <leader>zn :ZettelNew<cr><cr>:4d<cr>:w<cr>ggA
nnoremap <leader>wb :VimwikiBacklinks<cr>
let g:zettel_options = [{"front_matter" : {"tags" : ""}, "template" : "~/zettel/mytemplate.tpl"}, {}]
"----------------------VIMWIKI-------------------------------
function! VimwikiFindIncompleteTasks()
  lvimgrep /- \[ \]/ %:p
  lopen
endfunction

function! VimwikiFindAllIncompleteTasks()
  VimwikiSearch /- \[ \]/
  lopen
endfunction

nnoremap <F5> :setlocal spell! spelllang=en_us<CR>

command! Diary VimwikiDiaryIndex
autocmd FileType calendar nmap <buffer> <CR> :<C-u>call vimwiki#diary#calendar_action(b:calendar.day().get_day(), b:calendar.day().get_month(), b:calendar.day().get_year(), b:calendar.day().week(), "V")<CR><CR>
let g:vimwiki_use_calendar=1
let g:vimwiki_use_mouse = 1
let g:vimwiki_auto_chdir = 1
let g:vimwiki_auto_header=1
let g:vimwiki_hl_headers=1
let g:vimwiki_hl_cb_checked=2
let g:vimwiki_listsym_rejected = '✗' " ϴ
let g:vimwiki_listsyms = ' ○◐●✓'
let g:vimwiki_dir_link="index"
let g:vimwiki_markdown_link_ext=1
let g:vimwiki_links_header='See Also'
let g:vimwiki_links_header_level = 2
let g:vimwiki_tags_header='Tags'
let g:vimwiki_tags_header_level = 2
let g:vimwiki_toc_header = "Table of Contents"
let g:vimwiki_toc_header_level = 2
" let g:vimwiki_filetypes = ["markdown, "pandoc"]
" let g:vimwiki_tag_format = {'pre': '\(^[ -]*tags\s*: .*\)\@<=',
    " \ 'pre_mark': '@', 'post_mark': '', 'sep': '>><<', 'conceal':1}
" let g:vimwiki_valid_html_tags=["b","i","s","u","sub","sup","kbd","br","hr"]
" let g:vimwiki_listsyms = '✗○◐●✓'
" let g:vimwiki_conceal_pre=1
" let g:vimwiki_folding = 'expr'
hi Vimwikibgreen guibg=#aaffbf guifg=#1e1c31
hi Vimwikigreen guifg=#95ffa4
hi Vimwikibyellow guibg=#ffffaa guifg=#1e1c31
hi Vimwikiyellow guifg=#ffe9aa
hi Vimwikiborange guibg=#ffca86 guifg=#1e1c31
hi Vimwikiorange guifg=#ffb378
hi Vimwikibred guifg=#ff9090 guifg=#1e1c31
hi Vimwikired guifg=#ff7070
hi Vimwikibpurple guibg=#e99fff guifg=#1e1c31
hi Vimwikipurple guifg=#906cff
hi Vimwikibblue guibg=#91ddff guifg=#1e1c31
hi Vimwikiblue guifg=#65b2ff

hi textSnipTEX guifg=#ffb378
hi VimwikiLink guifg=#91ddff gui=underline
hi VimwikiHTMLtag guifg=#e99fff
hi VimwikiList guifg=#ffb378
hi VimwikiListTodo guifg=#e99fff gui=bold
hi VimwikiCode guifg=#95ffa4
hi VimwikiTag guifg=#ff7070 gui=italic
hi VimwikiHeader1 cterm=bold ctermfg=9 gui=bold,italic, guifg=#ff8080
hi VimwikiHeader2 cterm=bold ctermfg=9 gui=bold,italic guifg=#ffe9aa
hi VimwikiHeader3 cterm=bold ctermfg=9 gui=bold,italic guifg=#95ffa4
hi VimwikiHeader4 cterm=bold ctermfg=9 gui=bold,italic guifg=#91ddff
hi VimwikiHeader5 cterm=bold ctermfg=9 gui=bold,italic guifg=#dd91ff
"hi VimwikiDeimiterColor guifg=#e99fff
hi link VimwikiTag Title
hi link VimwikiMarkers Identifier
hi link VimwikiDelimiter MatchParen
hi link VimwikiDelimiterColor SpecialKey
" MatchParen
" hi HighlightedyankRegion guifg=Normal guibg=Visual

nmap <silent> ,wdi :VimwikiDiaryIndex<CR>
nmap <silent> ,wdn :VimwikiMakeDiaryNote<CR>
nmap <silent> ,wd> :VimwikiMakeTomorrowDiaryNote<CR>
nmap <silent> ,wd< :VimwikiMakeYesterdayDiaryNote<CR>
nmap <silent> ,wx <Plug>VimwikiIndex
nmap <silent> <space>wd<space> :VimwikiMakeDiaryNote<CR>


augroup FileType vimwiki
    nmap <silent> <space>wi        :VimwikiIndex<CR>
    nmap <silent> <space>wdi       :VimwikiDiaryIndex<CR>
    nmap <silent> <space>wdn :VimwikiMakeDiaryNote<CR>
    nmap <silent> <space>wc<space> :call ToggleCalendar()<CR>
    nmap <silent> <space>wcc       :VimwikiColorize<space>
    nmap <silent> <space>wd,       :VimwikiDiaryPrevDay<CR>
    nmap <silent> <space>wd.       :VimwikiDiaryNextDay<CR>
    nmap <silent> <space>wd<       :VimwikiMakeYesterdayDiaryNote<CR>
    nmap <silent> <space>wd>       :VimwikiMakeTomorrowDiaryNote<CR>
    nmap <silent> <space>wfd       :VimwikiDeleteFile<CR>
    nmap <silent> <space>wl<       :VimwikiDecrementListItem<CR>
    nmap <silent> <space>wgd       :VimwikiDiaryGenerateLinks<CR>
    nmap <silent> <space>wgl :VimwikiGenerateLinks<CR>
    nmap <silent> <space>wgt :VimwikiGenerateTags<CR>
    nmap <silent> <space>wgT :VimwikiGenerateTagLinks<CR>
    nmap <silent> <space>wfr       :VimwikiRenameFile<CR>
    nmap <silent> <space>wl>       :VimwikiIncrementListItem<CR>
    nmap <silent> <space>wl<       :VimwikiDecrementListItem<CR>
    nmap <silent> <space>wgd       :VimwikiDiaryGenerateLinks<CR>
    nmap <silent> <space>wgl :VimwikiGenerateLinks<CR>
    nmap <silent> <space>wgt :VimwikiGenerateTags<CR>
    nmap <silent> <space>wgT :VimwikiGenerateTagLinks<CR>
    nmap <silent> <space>wl<       :VimwikiDecrementListItem<CR>
    nmap <silent> <space>wgd       :VimwikiDiaryGenerateLinks<CR>
    nmap <silent> <space>wgl :VimwikiGenerateLinks<CR>
    nmap <silent> <space>wgt :VimwikiGenerateTags<CR>
    nmap <silent> <space>wgT :VimwikiGenerateTagLinks<CR>
    nmap <silent> <space>wgc :VimwikiTableMoveColumnLeft<CR>

    nmap <silent> <space>w<space>i :call VimwikiFindIncompleteTasks()<CR>
    nmap <silent> <Space>w<space>i :call VimwikiFindAllIncompleteTasks()<CR>

    nmap <silent> <space>wt<space> :VimwikiTable<CR>
    nmap <silent> <space>wt. :VimwikiTableMoveColumnRight<CR>
    nmap <silent> <space>wt, :VimwikiTableMoveColumnLeft<CR>

    nmap <silent> <space>w; :VimwikiSearchTags<CR>
augroup end

let g:vimwiki_list = [
  \  {
  \   'name': 'CWiki',
  \   'path': '~/wiki', 'syntax':'markdown', 'ext':'.md',
  \   'automatic_nested_syntaxes': 1, 'path_html': '~/wiki/html/',
  \   'diary_rel_path': 'diary/', 'template_path': '~/wiki/templates/',
  \   'diary_caption_level': 1,
  \   'bullet_types': ['-', '•', '→'],
  \   'template_ext':'.html',
  \   'template_default':'markdown',
  \   'auto_diary_index': 1,
  \   'auto_generate_links': 1,
  \   'auto_generate_tags': 1,
  \   'diary_frequency': 'daily',
  \   'diary_start_week_day': 'monday',
  \   'cycle_bullets': 1,
  \   'auto_tags': 1,
  \  },
  \  {
  \   'path': '~/wiki/old',
  \   'auto_tags': 1,
  \   'auto_generate_links': 1,
  \   'auto_generate_tags': 1,
  \   'html_header': '~/doc/wiki/pri/html/header.html',
  \   'html_footer': '~/doc/wiki/pri/html/footer.html',
  \   'css_name': '~/doc/wiki/pri/html/style.css',
  \   'automatic_nested_syntaxes': 1,
  \  },
  \  {
  \   'path': '~/doc/wiki/pub/',
  \   'html_header': '~/doc/wiki/pub/src/header.html',
  \   'html_footer': '~/doc/wiki/pub/src/footer.html',
  \   'css_name': '~/doc/wiki/pub/src/style.css'
  \  },
  \  {'path': '~/lab/clpweb/wiki', 'syntax':'markdown', 'ext':'.md'},
  \  {
  \   'path': '~/doc/wiki/post/',
  \   'ext': '.md',  'auto_toc': 1,
  \   'diary_rel_path': 'posts',
  \   'auto_tags': 1,
  \   'auto_generate_links': 1,
  \   'auto_generate_tags': 1,
  \   'automatic_nested_syntaxes': 1,
  \  },
  \ ]

