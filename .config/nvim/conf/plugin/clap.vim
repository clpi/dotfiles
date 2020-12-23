" ------------ XXX Clap options ------------------------"
"let g:clap_theme = 'dogrun'

"let g:clap_layout = { 'relative': 'editor' }
let g:clap_search_box_border_style = 'curve'
let g:clap_enable_icon = 1
let g:clap_layout = { 'width': '94%', 'height': '50%', 'row': '10%', 'col': '3%' }
let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '
let g:clap_provider_grep_enable_icon = 1
" let g:clap_provider_wiki_colors = {
" }
" TODO Do this with a simple ls -t not by manually listing them
let g:clap_provider_wikipages = {
      \ 'source': [
      \   'config/rust/index', 'Credentials', 'goals/index', 'proj/div/index',
      \  'todo/index',  'tags', 'Thoughts',
      \  'Watchlist', 'Whiteboard', 'Wishlist', 'Pocket', 'Goals',
      \  'Papers', 'Logs/index', 'Notifications', 'Bookmarks', 'Inventory/index',
      \  'res/index', 'res/imp/index', 'diary/index', 'diary/diary', 'proj/index',
      \  'Someday', 'code/Rust', 'code/Python', 'res/inv', 'scratch/index',
      \  'todo/lingering', 'todo/hobby', 'todo/someday', 'config/vim',
      \  'code/index', 'board'
      \  ],
      \ 'sink': { selected -> execute(vimwiki#base#goto(selected), '')},
      \ }
let g:clap_provider_functions = {
      \ 'source': '*functions',
      \ 'sink': { selected -> execute(selected, '')},
      \ }
let g:clap_provider_ucmd = {
      \ 'source': [
      \ 'CocCommand explorer',
      \ 'Calendar',
      \ 'PlugUpdate',
      \ 'PlugClean',
      \ 'PlugInstall',
      \ 'PlugUpdate',
      \ 'CocUpdate',
      \ 'CocDisable',
      \ 'CocEnable',
      \ 'CocRestart',
      \ 'CocConfig',
      \ 'CocCommand document.renameCurrentFile',
      \ 'CocCommand document.renameCurrentWord',
      \ 'CocCommand post.do',
      \ 'CocCommand post.new',
      \ 'CocCommand rust-analyzer.run',
      \ 'CocCommand rust-analyzer.openDocs',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      \ 'CocCommand tags.generate',
      \ 'CocList lists'
      \  ],
      \ 'sink': { selected -> execute(selected, '')},
      \ }
let g:clap_provider_dotfiles = {
      \ 'source': ['~/.vimrc',
      \            '~/.p10k.zsh',
      \            '~/.irssi/config',
      \            '~/.config/starship.toml',
      \            '~/.config/newsboat/urls',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        \            '~/.config/newsboat/config',
      \            '~/.config/nvim/init.vim',
      \            '~/.config/nvim/init.lua',
      \            '~/.config/lutris/lutris.conf',
      \            '~/.config/mopidy/mopidy.conf',
      \            '~/.config/mpd/mpd.conf',
      \            '~/.config/geany/geany.conf',
      \            '~/.emacs.d/init.el',
      \            '~/.emacs.d/.local/autoloads.el',
      \            '~/.emacs.d/.local/env',
      \            '~/.cargo/config.toml',
      \            '~/.oh-my-zsh/oh-my-zsh.sh',
      \            '~/.config/nvim/conf/settings.vim',
      \            '~/.config/nvim/conf/commands.vim',
      \            '~/.config/nvim/conf/plugin.vim',
      \            '~/.config/nvim/conf/keymaps.vim',
      \            '~/.config/nvim/conf/functions.vim',
      \            '~/.config/nvim/conf/autocmd.vim',
      \            '~/.config/nvim/conf/plugin/coc.vim',
      \            '~/.config/nvim/conf/plugin/lightline.vim',
      \            '~/.config/nvim/conf/plugin/clap.vim',
      \            '~/.config/nvim/conf/plugin/fzf.vim',
      \            '~/.config/nvim/conf/plugin/general.vim',
      \            '~/.config/nvim/conf/plugin/plug.lua',
      \            '~/.config/nvim/conf/plugin/old.vim',
      \            '~/.config/nvim/conf/lang/rust.vim',
      \            '~/.config/nvim/conf/lang/nim.vim',
      \            '~/.config/nvim/conf/lang/general.vim',
      \            '~/.config/nvim/conf/lang/go.vim',
      \            '~/.config/nvim/conf/lang/markdown.vim',
      \            '~/.config/nvim/conf/lang/vimwiki.vim',
      \            '~/.config/nvim/conf/lang/python.vim',
      \            '~/.config/nvim/conf/lang/jsts.vim',
      \            '~/.config/nvim/conf/lang/htmlcss.vim',
      \            '~/.config/nvim/conf/lang/latex.vim',
      \            '~/.config/nvim/coc-settings.json',
      \            '~/.config/waybar/modules/crypto/crypto.ini',
      \            '~/.config/ranger/rc.conf',
      \            '~/.config/ranger/rifle.conf',
      \            '~/.config/dijo/config.toml',
      \            '~/.config/clay/config.yaml',
      \            '~/.config/epr/config',
      \            '~/.config/micro/bindings.json',
      \            '~/.config/micro/settings.json',
      \            '~/.config/gtk-3.0/settings.ini',
      \            '~/.config/gtk-4.0/settings.ini',
      \            '~/.config/htop/htoprc',
      \            '~/.config/gh/config.yml',
      \            '~/.config/gh/hosts.yml',
      \            '~/.config/gh/state.yml',
      \            '~/.config/i3/status.toml',
      \            '~/.config/jesseduffield/lazydocker/config.yml',
      \            '~/.config/lavalauncher/config',
      \            '~/.config/azote/azoterc',
      \            '~/.zshrc',
      \            '~/.stack/config.yaml',
      \            '~/.config/mimeapps.list',
      \            '~/.config/monitors.xml',
      \            '~/.config/swaylock/config',
      \            '~/.config/swaylock/env',
      \            '~/.yarnrc',
      \            '~/.subversion/config',
      \            '~/.rustup/settings.toml',
      \            '~/.sup/config.yaml',
      \            '~/.ssh/known_hosts',
      \            '~/.sup/contacts.txt',
      \            '~/.aws/config',
      \            '~/.aws/credentials',
      \            '~/.aws/link',
      \            '~/.serverlessrc',
      \            '~/.notmuch-config',
      \            '~/.haxornewsconfig',
      \            '~/.flutter_settings',
      \            '~/.flutter',
      \            '~/.timewarrior/timewarrior.cfg',
      \            '~/.wakatime.cfg',
      \            '~/.pinerc',
      \            '~/.irssi/config',
      \            '~/.zprofile',
      \            '~/.doom.d/config.el',
      \            '~/.doom.d/init.el',
      \            '~/.doom.d/packages.el',
      \            '~/.weechat/weechat.conf',
      \            '~/.weechat/plugins.conf',
      \            '~/.weechat/python.conf',
      \            '~/.weechat/irc.conf',
      \            '~/.newsboat/urls',
      \            '~/.bash_profile',
      \            '~/.bashrc',
      \            '~/.taskrc',
      \            '~/.gitconfig',
      \            '~/.pinerc',
      \            '~/.sawsrc',
      \            '~/.config/.muttrc',
      \            '~/.config/katerc',
      \            '~/.config/katevirc',
      \            '~/.config/pavucontrol.ini',
      \            '~/.config/user-dirs.dirs',
      \            '~/.config/user-dirs.locale',
      \            '~/.config/kanshi/config',
      \            '~/.config/mpv/mpv.conf',
      \            '~/.config/pgcli/config',
      \            '~/.config/starship.toml',
      \            '~/.taskbook.json',
      \            '~/.tmux.conf',
      \            '~/.nimble/nimbledata.json',
      \            '~/.config/sway/config',
      \            '~/.config/neofetch/config.conf',
      \            '~/.config/neomutt/neomuttrc',
      \            '~/.config/neomutt/accts/gmail_main',
      \            '~/.config/neomutt/accts/chris_pecuio',
      \            '~/.config/neomutt/accts/chris_pecuniescom',
      \            '~/.mbsyncrc',
      \            '~/.config/neomutt/appearance',
      \            '~/.config/neomutt/sidebar',
      \            '~/.config/neomutt/gpg.rc',
      \            '~/.config/neomutt/accounts',
      \            '~/.config/neomutt/mailcap',
      \            '~/.config/neomutt/colors.default',
      \            '~/.config/sway/i3status-rs/status.toml',
      \            '~/.config/sway/scripts/lock.sh',
      \            '~/.config/sway/scripts/idle.sh',
      \            '~/.config/sway/scripts/exit.sh',
      \            '~/.config/waybar/config',
      \            '~/.config/mako/config',
      \            '~/.config/waybar/style.css',
      \            '~/.config/alacritty/alacritty.yml',
      \            '~/.config/kitty/kitty.conf',
      \            '~/.config/nnn/config',
      \            '~/.config/kak/kakrc',
      \            '~/.config/sakura/sakura.conf',
      \            '~/.config/QtProject/QtCreator.ini',
      \            '~/.config/QtProject/QtCreator.conf',
      \            '~/.config/qutebrowser/autoconfig.yml',
      \            '~/.config/spicetify/config.ini',
      \            '~/.config/kak/colors/chris.kak',
      \            '~/.config/TabNine/tabnine_config.json',
      \            '~/.config/TabNine/TabNineExample.toml',
      \            '~/.config/terminator/config',
      \            '~/.config/vis/visrc.lua',
      \            '~/.config/transmission/settings.json',
      \            '~/.config/kak/plugins/powerline.kak/rc/themes/solarized-dark-termcolors.kak',
      \            '~/.config/kak/plugins/powerline.kak/rc/themes/base16.kak',
      \            '~/.config/nwg-launchers/nwgbar/bar.json',
      \            '~/.config/nwg-launchers/nwgbar/style.css',
      \            '~/.config/nwg-launchers/nwgdmenu/style.css',
      \            '~/.config/qutebrowser/config.py',
      \            '~/.config/qutebrowser/quickmarks',
      \            '~/.config/qutebrowser/qutepocket',
      \            '~/.config/qutebrowser/qutepocket',
      \            '~/.config/qutebrowser/bookmarks/urls',
      \            '~/.config/nwg-launchers/nwgbar/style.css',
      \            '~/.config/nwg-launchers/nwgbar/style.css',
      \            '~/.config/zathura/zathurarc',
      \            '~/.config/rofi/config',
      \            '~/.config/wofi/config',
      \            '~/.config/spotify-tui/client.yml',
      \            '~/.config/spotify-tui/config.yml',
      \            '~/.config/wofi/style.css',
      \            '~/.config/bpytop/bpytop.conf',
      \            '~/.config/sgtk-menu/style.css',
      \            '~/.config/pavucontrol.ini',
      \            '~/.config/wayfire.ini',
      \            '~/.config/wf-shell.ini',
      \            '~/.config/nvim/plugged/challenger-deep/colors/challenger_deep.vim',
      \            '~/doc/df/install.sh',
      \            '~/.config/nvim/colors/cpecu.vim',
      \            '~/.config/nvim/colors/chris.vim',
      \            '~/.config/nvim/plugged/challenger-deep/autoload/lightline/colorscheme/challenger_deep.vim',
      \            '~/.config/nvim/plugged/lightline.vim/autoload/lightline/colorscheme/cpecu.vim',
      \            '~/.profile',
      \            '~/.config/nvim/palette.vim'
      \           ],
      \ 'sink': 'e',
      \ }

let g:clap_popup_input_delay=0
let g:clap_popup_border = 'curve' "rounded, nil
let g:clap_maple_delay=0
let g:clap_insert_mode_only=v:true
let g:clap_provider_grep_delay=0
let g:clap_provider_grep_opts='--hidden g "!.git/"'
let g:clap_preview_size= { "*": 6, "files": 10 }
let g:clap_background_shadow_blend=50
let g:clap_provider_grep_blink=[0,0]
autocmd FileType clap_input inoremap <silent> <buffer> <C-n> <C-R>=clap#navigation#linewise('down')<CR>
autocmd FileType clap_input inoremap <silent> <buffer> <C-p> <C-R>=clap#navigation#linewise('up')<CR>
hi default link ClapInput Pmenu
hi default link ClapPreview Pmenu
"hi default link ClapDisplay PmenuSbar
hi default link ClapDisplay PMenu
" hi default link ClapSelected Statusline
" hi default link ClapCurrentSelection Statusline
hi default link ClapMatches Search
hi default link ClapNClapNoMatchesFound Keyword
let g:clap_fuzzy_match_hl_groups= [
          \ [118 , '#91ddff'] ,
          \ [82  , '#91cdff'] ,
          \ [46  , '#a1cdff'] ,
          \ [47  , '#a1cdff'] ,
          \ [48  , '#a1cdff'] ,
          \ [49  , '#b5bfff'] ,
          \ [50  , '#c1bfff'] ,
          \ [51  , '#cdafff'] ,
          \ [87  , '#c991ff'] ,
          \ [123 , '#d991ff'] ,
          \ [159 , '#dd91ff'] ,
          \ [195 , '#dd91ff'] ,
          \ ]
" let g:clap_fuzzy_match_hl_groups= [
"           \ [118 , '#95ffa4'] ,
"           \ [82  , '#85ef94'] ,
"           \ [46  , '#75df84'] ,
"           \ [47  , '#65cf74'] ,
"           \ [48  , '#55bf74'] ,
"           \ [49  , '#55af84'] ,
"           \ [50  , '#5aaf94'] ,
"           \ [51  , '#6abfa4'] ,
"           \ [87  , '#7acfb4'] ,
"           \ [123 , '#8adfc4'] ,
"           \ [159 , '#9aefd4'] ,
"           \ [195 , '#aaffe4'] ,
"           \ ]


" ------------- XXX C-C : Clap commands ---------------"
nnoremap <silent> <C-c> :Clap<CR>
nnoremap <silent> <c-c>a       :Clap coc_actions<CR>
nnoremap <silent> <c-c>b       :Clap buffers<CR>
nnoremap <silent> <c-c><c-b>   :Clap blines<CR>
nnoremap <silent> <c-c>c       :Clap coc_commands<CR>
nnoremap <silent> <c-c>C       :Clap colors<CR>
nnoremap <silent> <c-c>d       :Clap coc_diagnostics<CR>
nnoremap <silent> <c-c>D       :Clap dotfiles<CR>
nnoremap <silent> <c-c><c-d>       :Clap dotfiles<CR>
nnoremap <silent> <c-c>e       :Clap filer<CR>
nnoremap <silent> <c-c><c-e>   :Clap coc_extensions<CR>
nnoremap <silent> <c-c>f       :Clap files<CR>
nnoremap <silent> <c-c><c-f>   :Clap filer<CR>
nnoremap <silent> <c-c>g       :Clap grep<CR>
nnoremap <silent> <c-c><c-g>   :Clap grep2<CR>
nnoremap <silent> <c-c>h       :Clap history<CR>
nnoremap <silent> <c-c><c-h>   :Clap help_tags<CR>
nnoremap <silent> <c-c>j       :Clap jumps<CR>
nnoremap <silent> <c-c>k       :Clap maps<CR>
nnoremap <silent> <c-c><c-k>   :Clap maps<CR>
nnoremap <silent> <c-c><c-l>   :Clap coc_location<CR>
nnoremap <silent> <c-c>l       :Clap lines<CR>
nnoremap <silent> <c-c>m       :Clap marks<CR>
nnoremap <silent> <c-c><c-m>   :Clap maps<CR>
nnoremap <silent> <c-c>n       :Clap lines<CR>
nnoremap <silent> <c-c>o       :Clap coc_outline<CR>
nnoremap <silent> <c-c>p       :Clap proj_tags<CR>
nnoremap <silent> <c-c><c-p>   :Clap grep<CR>
nnoremap <silent> <c-c>q       :Clap quickfix<CR>
nnoremap <silent> <c-c><C-q>   :Clap quickfix<CR>
nnoremap <silent> <c-c>r       :Clap registers<CR>
nnoremap <silent> <c-c>s       :Clap coc_symbols<CR>
nnoremap <silent> <c-c><c-s>   :Clap coc_services<CR>
nnoremap <silent> <c-c>t       :Clap tags<CR>
nnoremap <silent> <c-c><c-t>   :Clap help_tags<CR>
nnoremap <silent> <c-c>u       :Clap ucmd<CR>
nnoremap <silent> <c-c>v       :Clap command<CR>
nnoremap <silent> <c-c><c-v>   :Clap grep ++query=@visual<CR>
nnoremap <silent> <c-c>x       :Clap hist:<CR>
nnoremap <silent> <c-c>w       :Clap windows<CR>
nnoremap <silent> <c-c>y       :Clap yanks<CR>
nnoremap <silent> <c-c>v       :Clap functions<CR>

nnoremap <silent> <c-c><space> :Clap grep<CR>
nnoremap <silent> <c-c><c-space> :Clap grep<CR>
nnoremap <silent> <c-c><tab>   :Clap hist:<CR>
nnoremap <silent> <c-c><cr>    :Clap hist:<CR>
nnoremap <silent> <c-c>,       :Clap providers<CR>
nnoremap <silent> <c-c>.       :Clap grep ++query=<cword><CR>
nnoremap <silent> <c-c><c-.>   :Clap dotfiles<CR>
nnoremap <silent> <c-c>/       :Clap hist/<CR>
nnoremap <silent> <c-c>?       :Clap search_history<CR>
nnoremap <silent> <c-c>;       :Clap hist:<CR>
nnoremap <silent> <c-c><c-;>   :Clap command_history<CR>
nnoremap <silent> <c-c>-       :Clap command_history<CR>

nnoremap <silent> <c-c><c-c>   :Clap command<CR>
nnoremap <silent> <c-c><c-c><c-c>   :Clap coc_commands<CR>
nnoremap <silent> <c-c><c-c>b  :Clap bcommits<CR>
nnoremap <silent> <c-c><c-c><-b>  :Clap bcommits<CR>
nnoremap <silent> <c-c><c-c>c  :Clap command<CR>
nnoremap <silent> <c-c><c-c>g  :Clap git_files<CR>
nnoremap <silent> <c-c><c-c><c-g>  :Clap git_files<CR>
nnoremap <silent> <c-c><c-c>d  :Clap dotfiles<CR>
nnoremap <silent> <c-c><c-c><c-d>  :Clap dotfiles<CR>
nnoremap <silent> <c-c><c-c>h  :Clap cmd_history<CR>
nnoremap <silent> <c-c><c-c><c-h>  :Clap cmd_history<CR>
nnoremap <silent> <c-c><c-c>l  :Clap lines<CR>
nnoremap <silent> <c-c><c-c><c-l>  :Clap lines<CR>
nnoremap <silent> <c-c><c-c>v  :Clap functions<CR>
nnoremap <silent> <c-c><c-c><c-v>  :Clap functions<CR>
nnoremap <silent> <c-c><c-c>w   :Clap wikipages<CR>

nmap <silent> <space><space>a :Clap coc_actions<CR>
nmap <silent> <space><space>b :Clap buffers<CR>
nmap <silent> <space><space>B :Clap blines<CR>
nmap <silent> <space><space>c :Clap coc_commands<CR>
nmap <silent> <space><space>C :Clap command<CR>
nmap <silent> <space><space>d :Clap coc_diagnostics<CR>
nmap <silent> <space><space>D :Clap files ~/wiki/diary<CR>
nmap <silent> <space><space>e :Clap filer<CR>
nmap <silent> <space><space>E :Clap coc_extensions<CR>
nmap <silent> <space><space>f :Clap files<cr>
nmap <silent> <space><space>g :Clap grep<cr>
nmap <silent> <space><space>G :Clap grep2<cr>
nmap <silent> <space><space>h :Clap history<CR>
nmap <silent> <space><space>H :Clap help_tags<CR>
nmap <silent> <space><space>j :Clap jumps<CR>
nmap <silent> <space><space>k :Clap maps<CR>
nmap <silent> <space><space>l :Clap coc_location<CR>
nmap <silent> <space><space>L :Clap lines<CR>
nmap <silent> <space><space>m :Clap marks<CR>
nmap <silent> <space><space>p :Clap providers<CR>
nmap <silent> <space><space>q :Clap quickfix<CR>
nmap <silent> <space><space>r :Clap registers<CR>
nmap <silent> <space><space>n :Clap filer<CR>
nmap <silent> <space><space>t :Clap tags<CR>
nmap <silent> <space><space>T :Clap proj_tags<CR>
nmap <silent> <space><space>u :Clap ucmd<CR>
nmap <silent> <space><space>v :Clap command<CR>
nmap <silent> <space><space>W :Clap windows<CR>
nmap <silent> <space><space>y :Clap yanks<CR>
nmap <silent> <space><space>o :Clap coc_outline<CR>
nmap <silent> <space><space>s :Clap coc_symbols<CR>
nmap <silent> <space><space>S :Clap coc_services<CR>
nmap <silent> <space><space><space> :Clap grep<CR>
nmap <silent> <space><space>/ :Clap search_history<CR>
nmap <silent> <space><space>? :Clap search_history<CR>
nmap <silent> <space><space>; :Clap cmd_history<CR>
nmap <silent> <space><space>: :Clap cmd_history<CR>
nmap <silent> <space><space>- :Clap colors<CR>
nmap <silent> <space><space>. :Clap dotfiles<CR>
nmap <silent> <space><space>, :Clap loclist<CR>

nmap <silent> <space>gg :Clap gfiles<CR>
nmap <silent> <space>gc :Clap commits<CR>
nmap <silent> <space>gb :Clap bcommits<CR>
nmap <silent> <space>gd :Clap git_diff_files<CR>

nmap <silent> <space>w<space> :Clap grep2 ~/wiki<CR>
nmap <silent> <space>wf :Clap files ~/wiki<CR>
nmap <silent> <space><space>wi :Clap files ~/wiki<CR>
nmap <silent> <space><space>wd :Clap files ~/wiki/diary<CR>
nmap <silent> <space><space>wg :Clap grep2 ~/wiki<CR>
nmap <silent> <space><space>w<space> :Clap grep2 ~/wiki<CR>
