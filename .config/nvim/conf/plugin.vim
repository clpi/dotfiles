filetype plugin on
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif
"" ----------- plugins ---------
call plug#begin('~/.config/nvim/plugged')
" -------------------XXX IDE/LINT/COMPL ----------------
" if !has('nvim-0.5')
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'vn-ki/coc-clap'
" endif
" Plug 'dense-analysis/ale'
" Plug 'kassio/neoterm'
" Plug 'neomake/neomake'
" -------------------XXX DEBUG ----------------
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
" Plug 'sentriz/vim-print-debug'
" Plug 'puremourning/vimspector'
" Plug 'dbgx/lldb.nvim'
" Plug 'strottos/vim-padre', { 'dir': '~/.vim/plugged/vim-padre', 'do': 'make' }
" -------------------XXX FILETrEE ----------------
" Plug 'tpope/vim-vinegar'
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
" Plug 'lambdalisue/fern.vim'
" -------------------XXX SEARCH ------------------
Plug 'haya14busa/is.vim'
" Plug 'eugen0329/vim-esearch'
" Plug 'haya14busa/incsearch.vim'
" Plug 'brooth/far.vim'
" ------------------ XXX PRODUCTIVITY ---------------
Plug 'itchyny/calendar.vim'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'michal-h21/vim-zettel'
" Plug 'thaerkh/vim-workspace'
"Plug 'alok/notational-fzf-vim'
" Plug 'rmolin88/pomodoro.vim'
" Plug 'tools-life/taskwiki'
" Plug 'wakatime/vim-wakatime'
" Plug 'ledger/vim-ledger'

" ----------------- XXX FINDERS ---------------------
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
" Plug 'antoinemadec/coc-fzf'
" Plug 'pbogut/fzf-mru.vim'
" Plug 'yuki-ycino/fzf-preview.vim', { 'do': { -> FzfPreviewInstaller() } }
" Plug 'kien/ctrlp.vim'
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" Plug 'mhinz/vim-grepper'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'honza/vim-snippets'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'tpope/vim-obsession'

" -------------------XXX EDITING ----------------
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'tomtom/tcomment_vim', { 'on': 'TComment' }
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'AndrewRadev/switch.vim'
" Plug 'tpope/vim-sleuth'
" Plug 'AndrewRadev/tagalong.vim', {'for': 'html'}
" Plug 'raimondi/delimitmate'
" "Plug 'tyru/caw.vim'
" Plug 'andymass/vim-matchup'
" Plug 'wellle/targets.vim'
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'tpope/vim-repeat'

" -------------------XXX INTERFACE ----------------
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'psliwka/vim-smoothie'
Plug 'pechorin/any-jump.vim'
Plug 'mhinz/vim-startify'
" Plug 'liuchengxu/vista.vim'
" Plug 'voldikss/vim-floaterm'
" Plug 'Yggdroot/indentLine'
" Plug 'majutsushi/tagbar'
" Plug 'Xuyuanp/scrollbar.nvim'
" Plug 'glepnir/dashboard-nvim'
" Plug 'wellle/context.vim'
" Plug 'mbbill/undotree'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'kizza/actionmenu.nvim'
" Plug 'mengelbrecht/lightline-bufferline'
" Plug 'bagrat/vim-buffet'
" Plug 'liuchengxu/vim-which-key', {'on': ['WhichKey', 'WhichKey!'] }
" Plug 'pacha/vem-tabline'
" Plug 'benmills/vimux'
" Plug 'christoomey/vim-tmux-navigator'

" ----------------- XXX GIT --------------------
Plug 'tpope/vim-fugitive'
"Plug 'rhysd/git-messenger.vim'
" Plug 'lambdalisue/gina.vim'
" Plug 'cohama/agit.vim'
" Plug 'jreybert/vimagit'


" ----------------- XXX MOTION --------------------
Plug 'easymotion/vim-easymotion'

" ----------------- XXX RUNNERS --------------------
Plug 'skywind3000/asyncrun.vim'
"Plug 'skywind3000/asynctasks.vim'
"Plug 'tpope/vim-dispatch'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'zenbro/mirror.vim'
" Plug 'hkupty/iron.nvim'
" Plug 'metakirby5/codi.vim'
" Plug 'janko-m/vim-test'

" ----------------XXX FORMATTING ------------------
Plug 'mhartington/formatter.nvim'
" Plug 'junegunn/vim-easy-align', { 'on': '<Plug>(EasyAlign)' }
" Plug 'sbdchd/neoformat', { 'on': 'Neoformat' }
" Plug 'chiel92/vim-autoformat'
"
""" -------------- XXX WRITING -------------
" Plug 'junegunn/goyo.vim', { 'for': ['vimwiki','markdown','text','rst'], 'on': 'Goyo'}
" Plug 'kamykn/spelunker.vim', {'for': ['vimwiki', 'md']}
" Plug 'reedes/vim-wordy'
" Plug 'reedes/vim-litecorrect'
" Plug 'reedes/vim-lexical'
" Plug 'rhysd/vim-grammarous', {'for': ['markdown', 'vimwiki', 'text', 'rst']}
" Plug 'ron89/thesaurus_query.vim'
" Plug 'reedes/vim-pencil', {'for': ['markdown', 'vimwiki', 'text', 'rst']}
"Plugin 'godlygeek/tabular'
"
" ---------------XXX Filetype Specific -------------------
Plug 'sheerun/vim-polyglot'
Plug 'evanleck/vim-svelte', {'for': 'svelte'}
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'alaviss/nim.nvim', { 'for': 'nim' }
Plug 'lervag/vimtex', {'for': ['latex', 'plaintex', 'tex']}
Plug 'SidOfc/mkdx', { 'for': ['markdown',  'vimwiki'] }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
Plug 'ziglang/zig.vim', { 'for': 'zig' }
Plug 'xuhdev/vim-latex-live-preview', { 'for': [ 'latex', 'plaintex', 'tex'] }
Plug 'pearofducks/ansible-vim', { 'for': 'yaml' }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'avakhov/vim-yaml' , {'for': 'yaml'}
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'plasticboy/vim-markdown', { 'for': ['markdown',  'vimwiki'] }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'neovimhaskell/nvim-hs.vim', {'for': 'haskell'}
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}
Plug 'supercollider/scvim', {'for': 'supercollider'}
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'dart-lang/dart-vim-plugin', {'for': 'dart'}
" Plug 'mhartington/nvim-typescript', {'do': './install.sh', 'for': 'typescript'}
" Plug 'CraneStation/cranelift.vim'
" Plug 'parsonsmatt/intero-neovim', {'for': 'haskell'}
" Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
" Plug 'ollykel/v-vim', {'for': 'V'}
" Plug 'JuliaEditorSupport/julia-vim', {'for': 'julia'}
" Plug 'ap/vim-css-color', {'for': 'css'}
" Plug 'zchee/nvim-go', { 'do': 'make', 'for': 'go'}
" Plug 'iamcco/markdown-preview.nvim', { 'for': ['markdown',  'vimwiki'], 'do': 'cd app & npm install'  }
" Plug 'elzr/vim-json', { 'for': 'json' }
" Plug 'mhartington/formatter.nvim'
" Plug 'alvan/vim-closetag', {'for': 'html'}
" Plug 'arzg/vim-rust-syntax-ext', {'for': 'rust'}
" Plug 'racer-rust/vim-racer', {'for': 'rust'}
" Plug 'pangloss/vim-javascript', { 'for':  'javascript' }
" Plug 'gko/yats.vim', { 'for': 'typescript' }
" Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'typescript'] }
" Plug 'rhysd/vim-wasm', { 'for': ['wast', 'wat'] }
" Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
" Plug 'cespare/vim-toml', { 'for': 'toml' }
" Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
" Plug 'mxw/vim-jsx', {'for': 'jsx'}
" Plug 'donRaphaco/neotex', { 'for': ['tex', 'plaintex', 'latex'] }
" Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
" Plug 'npxbr/glow.nvim', {'do': ':GlowInstall', 'for': 'markdown'}
" Plug 'othree/html5.vim', { 'for': 'html' }
" Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
" Plug 'mattn/webapi-vim', {'for': 'markdown' }

" ------------ XXX COLORS ---------------------
Plug 'sainnhe/sonokai'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ryanoasis/vim-devicons'
" Plug 'romgrk/doom-one.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'embark-theme/vim', { 'as': 'embark' }
" Plug 'ajmwagar/vim-deus'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'sainnhe/edge' " support coc and lightline

" ------------ TODO for nvim 0.5
if has('nvim-0.5')
    " Plug 'TaDaa/vimade'
    " Plug 'nvim-lua/popup.nvim'
    " Plug 'nvim-lua/plenary.nvim'
    Plug 'mfussenegger/nvim-dap'
    Plug 'theHamsta/nvim-dap-virtual-text'
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'tjdevries/lsp_extensions.nvim'
    " Plug 'nvim-lua/completion-nvim'
    " Plug 'nvim-lua/diagnostic-nvim'
    " Plug 'kyazdani42/nvim-web-devicons'
    " Plug 'norcalli/nvim-colorizer.lua'
    " Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'nvim-lua/telescope.nvim'
    " Plug 'romgrk/nvim-treesitter-context'
    " Plug 'francoiscabrol/ranger.vim'
    " Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'yazdani42/nvim-tree.lua'
    " Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
    " Plug 'nvim-treesitter/playground'
    " Plug 'vigoux/architext.nvim'
    " Plug 'Akin909/nvim-bufferline.lua'
    " Plug 'vigoux/treesitter-context'
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'tjdevries/lsp_extensions.nvim'
    " Plug 'romgrk/barbar.nvim'
    " Plug 'tjdevries/express_line.lua'

endif


call plug#end()
