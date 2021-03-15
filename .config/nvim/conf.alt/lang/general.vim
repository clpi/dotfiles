au BufRead,BufNewFile *.svx set filetype=markdown
au BufRead,BufNewFile *.mdx set filetype=markdown

"_------------------ ZIG
let g:zig_fmt_autosave = 0


" ------------------ V ------------------------

" Disable highlight white space after "[]".
let g:v_highlight_array_whitespace_error = 0

" Disable highlight white space around the communications operator that don't follow the standard style.
let g:v_highlight_chan_whitespace_error = 0

" Disable highlight instances of tabs following spaces.
let g:v_highlight_space_tab_error = 0

" Disable highlight trailing white space.
let g:v_highlight_trailing_whitespace_error = 0

" Disable highlight function calls.
let g:v_highlight_function_calls = 0

let g:v_highlight_fields = 0

