source ~/.config/nvim/conf/plugin.vim
source ~/.config/nvim/conf/settings.vim
source ~/.config/nvim/conf/functions.vim
source ~/.config/nvim/conf/keymaps.vim
source ~/.config/nvim/conf/autocmd.vim
source ~/.config/nvim/conf/commands.vim

" PLUGIN SPECIFIC "
source ~/.config/nvim/conf/plugin/coc.vim
source ~/.config/nvim/conf/plugin/general.vim
source ~/.config/nvim/conf/plugin/fzf.vim
source ~/.config/nvim/conf/plugin/lightline.vim
source ~/.config/nvim/conf/plugin/clap.vim


" LANGUAGE SPECIFIC "
source ~/.config/nvim/conf/lang/rust.vim
source ~/.config/nvim/conf/lang/markdown.vim
source ~/.config/nvim/conf/lang/python.vim
source ~/.config/nvim/conf/lang/latex.vim
source ~/.config/nvim/conf/lang/vimwiki.vim
" luafile $HOME/.config/nvim/plug.lua
"
" KEYMAP SCHEMA
" t : tab actions
" m : move (content)
" M : position (cursor)
" t: tab
" <space> : leader
" - <space>: clap (finder/executor)
"    - <space>: grep2 (clap)
"    - a: actions (coc)
"    - b: buffers
"    - B: buffer lines
"    - c: commands (coc)
"    - C: commands (vim)
"    - d: diagnostics (coc)
"    - e: explorer (clap)
"    - f: files (clap)
"    - g: grep (clap)
"    - G: grep2 (clap)
"    - h: history (clap)
"    - H: help tags (clap)
"    - i: --
"    - j: jumps
"    - k: keymaps
"    - l: lines
"    - m: marks
"    - o: --
"    - p: providers
"    - q: quickfix
"    - r: registers
"    - s: coc symbols
"    - S: coc servcies
"    - u: user commands (defined in clap.vim)
"    - v: vim commands
"    - w: windows
"    - x: --
"    - z: --
"    - ;: cmd history
"    - :: cmd history
"    - /: search history
"    - ?: search history
"    - -: colors
"    - _: --
"    - ,: loclist
"    - .: dotfiles
"    - <: --
"    - >: --
"    ...unmapped: ' " ] [ {  } ` \ | ) (
" - a: -- (TEMP coc actions FIXME)
" - b: -- (TEMP buffers FIXME to buffers)
"    - b: buffer list
"    - d: buffer delete
"    - c: buffer close
"    - n: buffer new
" - c: -- (coc TODO)
" - d: debug
" - e: -- (TEMP clap files FIXME)
" - f: find (Fzf)
" - g: git
" - h: (move left pane)
" - i: --
" - j: (move down pane)
" - k: (move up pane)
" - l: (move right pane)
" - m: --
" - n: explorer (coc-explorer)
" - o: --
" - p: --
" - q: (quit FIXME maybe change?)
" - r: (resize panes)
" - s: --
" - t: toggle
"    - b: tab bar (vista)
"     - t: terminal
"     - u: undotree
"     - g: git
"       - g: git files (clap)
"       - c: git commits (clap)
"       - b: buffer commits (clap)
"       - d: diff files (clap)
" - u: --
" - v: --
" - w: vimwiki (TODO -- add more mappings)
" - x: --
" - y: --
" - z: zettel for vimwiki (TODO)
" - j: jump
" - w: wiki
" -   t
"   z: zettel
"     -
"
" , : code / filetype local actions
" <c-c>: clap
" <C-j> / <c-K>: smooth motion up/down
"
