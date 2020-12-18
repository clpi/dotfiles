set nofoldenable
" set numberwidth=1
set clipboard=unnamed
if has('gui_running')
    set guioptions-=T
endif
" if has("patch-8.1.1564")
"   " Recently vim can merge signcolumn and number column into one
"   " set signcolumn=number
" else
"   set signcolumn=yes
" endif
set signcolumn=yes
set history=500
set undolevels=1000
set undofile
set ttyfast
set ttimeout
set ttimeoutlen=100
set shell=/bin/zsh

set noshowmode
set noshowcmd
" set nomodeline
" set modelines=0

set showfulltag
set matchtime=2
set autoread
set modeline
set modelines     =1
" set list
set laststatus=2
set listchars+=trail:⣿
" set cpoptions     =aABcefFqsZ
" set formatoptions =tcrqnj
set viminfo^=!
filetype plugin on
filetype indent on
set autoread
au FocusGained,BufEnter * checktime
let $LANG='en'
set langmenu=en
set wildmenu
set wildoptions=pum
set wildmode=full
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,node_modules
    set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
    set wildignore+=*vim/backups*
    set wildignore+=*sass-cache*
    set wildignore+=*DS_Store*
    set wildignore+=vendor/rails/**
    set wildignore+=vendor/cache/**
    set wildignore+=*.gem
    set wildignore+=log/**
    set wildignore+=tmp/**
    set wildignore+=*.png,*.jpg,*.gif
endif
set number
" set ruler
set noruler
set cursorline
" set cmdheight
set hidden
set ignorecase
set hlsearch
set incsearch
set inccommand=nosplit
set lazyredraw
set magic
set showmatch
set noerrorbells
set novisualbell
" set mat=2
set tm=500
set foldcolumn=0
syntax enable
set synmaxcol=400               " do not highlight long lines
" syntax sync minlines=2000
" syntax sync maxlines=5000
" set synmaxcol=400
" set redrawtime=4000
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
set encoding=utf8
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set smartcase
set sw=4
" set numberwidth=1
set ts=4
set lbr
set tw=500
set mouse=a
" set winblend=20
set ai "Auto indent
set si "Smart indent
set ci
"  not display current line of each minimized file
"set wmw=0
set wrap "Wrap lines
set scrolloff=10 "Show lines of context
set sidescrolloff=8
set cmdwinheight=12
set cmdheight=1
set updatetime=100 " 300?
"set shiftround
" set fillchars=vert:│
" set fillchars+=fold:\
" set fillchars+=diff: "alternatives: ⣿ ░
set fillchars=fold:\ ,diff:⣿
" set formatoptions=
" set formatoptions+=1
" set formatoptions-=q " continue comments with gq"
" set formatoptions+=c " Auto-wrap comments using textwidth
" set formatoptions+=r " Continue comments when pressing Enter
" set formatoptions-=o " do not continue comment using o or O
" set formatoptions+=n " Recognize numbered lists
" set formatoptions+=2 " Use indent from 2nd line of a paragraph
" set formatoptions+=t " autowrap lines using text width value
" set formatoptions+=j " remove a comment leader when joining lines.
"set linebreak
"set showbreak=↪\
set iskeyword+=_,$,@
set breakindent
let &showbreak = ' '
"set nojoinspaces
"set gdefault
"set pumheight=25
"set numberwidth=4
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey
" let &colorcolumn="80,100"
" set linebreak                     " Break lines.
" set breakindent " Add indenting after break.
" let &showbreak="↳ "               " Line break indicator.
" set display+=lastline             " Show last line contents if it doesn't fit entirely on in buffer
set sessionoptions+=tabpages,globals
set shortmess+=c
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry
" set shortmess+=cIF
" set shortmess-=S " Show search matches count on search
set textwidth=0
set splitbelow
set splitright
set pumblend=22
set winblend=20
set completeopt=menuone,noinsert,noselect
set termguicolors
let ayucolor="mirage"
set background=dark
let g:challenger_deep_termcolors=256
let g:challenger_deep_terminal_italics=1
"colorscheme doom-one
"colorscheme sonokai

" colorscheme evokai
" colorscheme molokai
" colorscheme monokai-phoenix
" hi link TSInclude Keyword
if exists('$TMUX')
    colorscheme badwolf
else
    colorscheme challenger_deep
    hi Comment gui=italic
endif
hi Structure      gui=bold
hi Keyword     gui=bold
" hi Normal      guibg=NONE ctermbg=NONE guifg=#cbe3e7
" hi Identifier      guifg=#e99fff
" hi Function        guifg=#e99fff
" hi Typedef         guifg=#63f2f1  gui=italic
" hi Label           guifg=#63f2f1
" hi Type            guifg=#91ddff
"hi Tag             guifg=#aaffe4 gui=italic
"hi Statement      guifg=#906cff gui=italic
" hi Define          guifg=#ffb378
" hi Macro           guifg=#aaffe4 gui=italic
" hi Function    guifg=#ffb378
"hi Statement     gui=bold
"hi FoldColumn guibg=background
" hi FoldColumn guibg=CursorColumn
"hi TabLine guibg=NONE ctermbg=NONE
"hi TabLineSel guibg=NONE ctermbg=NONE
"hi TabLineFill guibg=NONE ctermbg=NONE
"hi EndOfBuffer guibg=NONE ctermbg=NONE guifg=NONE ctermfg=0

"" --------------XXX Netrw (,n)------------
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" _---------------------- TODO Autoswitch numbers -----------------
" augroup every
"     autocmd!
"     au InsertEnter * set norelativenumber
"     au InsertLeave * set relativenumber
" augroup END

