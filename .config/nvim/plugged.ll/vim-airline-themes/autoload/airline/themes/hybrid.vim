" vim-airline companion theme of Hybrid
" (https://github.com/w0ng/vim-hybrid)

let g:airline#themes#hybrid#palette = {}

function! airline#themes#hybrid#refresh()
    let s:N1 = airline#themes#get_highlight2(['PmenuSel', 'fg'], ['PmenuSel', 'bg'], 'bold')
    let s:N2 = airline#themes#get_highlight('PmenuThumb') " dark bg subtle
    let s:N3 = airline#themes#get_highlight('LineNr') " Bg subtle
    let g:airline#themes#hybrid#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    let g:airline#themes#hybrid#palette.normal_modified = {}

    let warning_group = airline#themes#get_highlight('SpellRare')
    let g:airline#themes#hybrid#palette.normal.airline_warning = warning_group
    let g:airline#themes#hybrid#palette.normal_modified.airline_warning = warning_group

    let s:I1 = airline#themes#get_highlight2(['PmenuSel', 'fg'], ['Type', 'fg'], 'bold')
    let s:I2 = airline#themes#get_highlight2(['Type', 'fg'], ['PmenuThumb', 'bg'])
    let s:I3 = airline#themes#get_highlight('LineNr') " dark bg subtle
    let g:airline#themes#hybrid#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#hybrid#palette.insert_modified = g:airline#themes#hybrid#palette.normal_modified
    let g:airline#themes#hybrid#palette.insert.airline_warning = g:airline#themes#hybrid#palette.normal.airline_warning
    let g:airline#themes#hybrid#palette.insert_modified.airline_warning = g:airline#themes#hybrid#palette.normal_modified.airline_warning

    let s:R1 = airline#themes#get_highlight2(['PmenuSel', 'fg'], ['Special', 'fg'], 'bold')
    let s:R2 = airline#themes#get_highlight2(['Special', 'fg'], ['PmenuThumb', 'bg'])
    let s:R3 = s:N3
    let g:airline#themes#hybrid#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let replace_group = airline#themes#get_highlight('SpellRare')
    let g:airline#themes#hybrid#palette.replace_modified = g:airline#themes#hybrid#palette.normal_modified
    let g:airline#themes#hybrid#palette.replace.airline_warning = g:airline#themes#hybrid#palette.normal.airline_warning
    let g:airline#themes#hybrid#palette.replace_modified.airline_warning = g:airline#themes#hybrid#palette.replace_modified.airline_warning

    let s:V1 = airline#themes#get_highlight2(['PmenuSel', 'fg'], ['Constant', 'fg'], 'bold')
    let s:V2 = airline#themes#get_highlight2(['Constant', 'fg'], ['PmenuThumb', 'bg'])
    let s:V3 = s:N3
    let g:airline#themes#hybrid#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#hybrid#palette.visual_modified = g:airline#themes#hybrid#palette.normal_modified
    let g:airline#themes#hybrid#palette.visual.airline_warning = g:airline#themes#hybrid#palette.normal.airline_warning
    let g:airline#themes#hybrid#palette.visual_modified.airline_warning = g:airline#themes#hybrid#palette.normal_modified.airline_warning

    let s:IA = airline#themes#get_highlight('LineNr')
    let g:airline#themes#hybrid#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
    let g:airline#themes#hybrid#palette.inactive_modified = g:airline#themes#hybrid#palette.normal_modified

    let g:airline#themes#hybrid#palette.accents = {
                \ 'red': airline#themes#get_highlight('Identifier'),
                \ }

endfunction

call airline#themes#hybrid#refresh()
