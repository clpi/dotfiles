"vim only

"gvim only
if has('gui_running')
    set guioptions-=T
endif
if &term =~ '256color'
	set t_ut=
endif
" surround.vim manual mappings
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"" YSIW without the plugin

set ttimeout
set ttimeoutlen=100
set ttyfast
nnoremap ,s" viw<esc>a"<esc>bi"<esc>lel
nnoremap ,s( viw<esc>a<space>)<esc><bs>bi(<space><esc><space>lel
nnoremap ,s) viw<esc>a)<esc>bi(<esc>lel
nnoremap ,s[  viw<esc>a<space>]<esc><bs>bi[<space><esc><space>lel
nnoremap ,s] viw<esc>a]<esc>bi[<esc>lel
nnoremap ,s{ viw<esc>a<space>}<esc><bs>bi{<space><esc><space>lel
nnoremap ,s} viw<esc>a}<esc>bi{<esc>lel
nnoremap ,s< viw<esc>a<space>><esc><bs>bi<<space><esc><space>lel
nnoremap ,s> viw<esc>a><esc>bi<<esc>lel
nnoremap ,s' viw<esc>a'<esc>bi'<esc>lel

call plug#begin('~/.vim/plugged')
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/edge'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'sheerun/vim-polyglot'
"Plug 'vimwiki/vimwiki'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'rust-lang/rust.vim'
"Plug 'jiangmiao/auto-pairs'
call plug#end()


"set guifont=Monospace:h11

"""""""""
" VIMRC FOR PURE EXPERIENCE.
" NO PLUGINS, NOTHING THAT WILL SLOW VIM DOWN
" MORE ADVANCED IDE ASPIRATIONS LEFT TO NVIM
set showcmd
set history=500
set paste
set shell=/bin/zsh
set belloff=all
filetype plugin on
filetype indent on
set autoread
au FocusGained,BufEnter * checktime
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.git
set wildignore+=*.pyc
set wildignore+=*.swp
set wildignore+=*.tmp
set wildignore+=node_modules/
set wildignore+=vendor/
let $LANG='en' 
set langmenu=en
set number
set ruler
set hidden

set ignorecase
set smartcase
set showmatch
set path=$PWD/**
set scrolloff=2
set completeopt=longest,menuone,preview,popup
set autoread
set hlsearch
set incsearch 
set lazyredraw 
set magic
set showmatch 
set mat=2"
set noerrorbells
set novisualbell
set tm=500
set foldcolumn=0
syntax enable 
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
set encoding=utf8
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set mouse=a
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set cursorline

" statusline
function! StatuslineGit()
    let l:branchname = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction"
function! StatuslineMode()
    let l:mode=mode()
    if l:mode==#"n"
        return "NORMAL"
    elseif l:mode==?"v"
        return "VISUAL"
    elseif l:mode==#"i"
        return "INSERT"
    elseif l:mode==#"R"
        return "REPLACE"
    endif
endfunction
set laststatus=2
"hi StatusLine ctermfg=231 guifg=#444444 ctermbg=235 guibg=#2a2f2a
set buflisted
"left align
set statusline=
set statusline+=%#warningmsg#
set statusline+=\[%n]
set statusline+=%#info#
set statusline+=\ %{StatuslineMode()}
set statusline+=%#identifier#
set statusline+=%{StatuslineGit()}
set statusline+=%3*
set statusline+=%#todo#
set statusline+=\ %f
set statusline+=%#error#
set statusline+=\ %y
set statusline+=%#warningmsg#
set statusline+=\ %m
set statusline+=%3*
set statusline+=\ %=
hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222
"right align
" set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\ [%{&fileformat}\]
set statusline+=%#identifier#
set statusline+=%{&paste?'[p]':''}
set statusline+=%3*
set statusline+=%#warningmsg#
set statusline+=\ [%L
set statusline+=%#todo#
set statusline+=\ (%p%%)
set statusline+=%3*]
set statusline+=\ (
set statusline+=%#warningmsg#
set statusline+=\%l,
set statusline+=%#todo#
set statusline+=\ %c
set statusline+=%4*
set statusline+=\) 
set statusline+=%4*

" disable for space?
"let g:airline_theme = "hybrid"
set signcolumn=no
set cmdheight=1
set updatetime=300
set shortmess+=c
set splitbelow
set splitright
set background=dark
" colorscheme deus
" colorscheme monokain
" colorscheme hybrid_reverse
" colorscheme space-vim-dark
" colorscheme monokai
" colorscheme OceanicNext
" colorscheme Tomorrow-Night-Bright 
" colorscheme molokai
colorscheme challenger_deep
hi Normal ctermbg=NONE guibg=NONE
" set cursorline
" colorscheme sublimemonokai
" hi Comment gui=italic
" colorscheme molokai
" colorscheme mopkai
" hi Normal guifg=#eeeeee ctermfg=256
"hi LineNr     ctermbg=NONE guibg=NONE
"hi SignColumn ctermbg=NONE guibg=NONE
" hi Comment guifg=#333444 ctermfg=59
" hi Keyword guifg=#ff9999 ctermfg=244
" hi Function guifg=#ff9999 ctermfg=244
" hi Statement guifg=#ff9999 ctermfg=244
" let g:space_vim_dark_background = 234
augroup FileTypes
    autocmd FileType markdown setlocal signcolumn=no cmdheight=1
    autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType yml setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType toml setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
augroup END

let g:netrw_winsize=25
let g:netrw_localrmdir='rm -r'
let g:netrw_liststyle = 4
let g:netrw_banner=0
let g:netrw_altv = 1
" let g:netrw_bufsettings="noma nomod nu nobl nowrap ro non"
let g:netrw_browse_split = 3
let g:NetrwIsOpen=0
"let g:netrw_browse_split = 1
let g:netrw_list_hide = &wildignore
function! ToggleNetrw(dir)
    let dirt = a:dir
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        if (dirt==0)
            silent Lexplore
        else
            silent Rexplore
        endif
    endif
endfunction
noremap <silent> <Leader>n :call ToggleNetrw(0)<CR>

" --------------MAPPINGS---------------------
"" SPLITS (<space>) -------------------------
map <Space> <Leader>
nmap <space><space> :new<CR>
nnoremap <leader>L <C-w>v<C-w>l
nnoremap <leader>J <C-w>s<C-w>j
nnoremap <leader><leader>l <C-w>v
nnoremap <leader><leader>j <C-w>s
map , , 

" built in vim commentary toggle TODO maybe not quite as good tho...
nmap ,cc :Commentary<CR>
nmap <space>c<space> :Commentary<CR>
vmap <space>c<space> :Commentary<CR>

" INDENTATIONS
nnoremap ,rip >ib
nnoremap ,rib =ib
nnoremap ,ria gg=G

" FILE BROWSERS
" Window navigation mappings
nnoremap <silent> <leader>wh :<C-u>wincmd h<CR>
nnoremap <silent> <leader>wj :<C-u>wincmd j<CR>
nnoremap <silent> <leader>wk :<C-u>wincmd k<CR>
nnoremap <silent> <leader>wl :<C-u>wincmd l<CR>
" Map hjkl and leader to split nav
nnoremap <silent> <leader>h :<C-u>wincmd h<CR>
nnoremap <silent> <leader>j :<C-u>wincmd j<CR>
nnoremap <silent> <leader>k :<C-u>wincmd k<CR>
nnoremap <silent> <leader>l :<C-u>wincmd l<CR>

" Close window
nnoremap <silent> <leader>wq :<C-u>wincmd q<CR>
nnoremap <silent> <leader>wc :<C-u>wincmd q<CR>

" Split mappings
" nnoremap <tab><tab> <C-w>w
" nnoremap <leader>S <C-w>r

" Resize splits
nnoremap <silent> <leader>rh 5<C-w><
nnoremap <silent> <leader>rj 5<C-w>-
nnoremap <silent> <leader>rk 3<C-w>+
nnoremap <silent> <leader>rl 3<C-w>>
nnoremap <silent> <Leader>rK :exe "resize " . (winheight(0) * 7/6)<CR>
nnoremap <silent> <Leader>rJ :exe "resize " . (winheight(0) * 5/6)<CR>
nnoremap <silent> <Leader>rL :exe "resize " . (winwidth(0) * 7/6)<CR>
nnoremap <silent> <Leader>rH :exe "resize " . (winwidth(0) * 5/6)<CR>

tnoremap <ESC> <C-\><C-n>
tnoremap jk <C-\><C-n>

" Change to pwd
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" save functions
inoremap <C-x> <ESC>:q<CR>
nnoremap <C-x> :q<CR>
nnoremap <leader>w :w<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>w! :w!<cr>
nnoremap <leader>ww :w!<CR>
nnoremap <leader>WW :w! !sudo tee % > /dev/null<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>q! :q!<cr>
nnoremap <leader>Q :q!<cr>
nnoremap <leader>qa :qa<cr>
inoremap <C-s> <Esc>:w<CR>i
cmap w!! %!sudo tee > /dev/null %

"" Tab operations (t / tab) -------------------------
let g:lasttab = 1
nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> tn :tabnew<cr>
nnoremap <silent> <leader>td :tabclose<cr>
nnoremap <silent> td :tabclose<cr>
nnoremap <silent> tm :tabmove
nnoremap <silent> tmh :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> tml :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
nnoremap <silent> <Tab> gt
nnoremap <silent> <S-Tab> gT
nnoremap <silent> H gT
nnoremap <silent> L gt
nnoremap <silent> tt :exe "tabn ".g:lasttab<CR>
nnoremap <silent> <space>tt :exe "tabn ".g:lasttab<CR>
nnoremap <silent> te :tabedit <C-r>=expand("%:p:h")<cr>/
nnoremap <silent> <space>te :tabedit <C-r>=expand("%:p:h")<cr>/
" move a split into its own tab
nnoremap ts <C-w>T
nnoremap <space>ts <C-w>T
nnoremap tx :tabdo
nnoremap <silent> <space>tx :tabdo
au TabLeave * let g:lasttab = tabpagenr()


" Change buffers
nnoremap <silent> <leader>b<space> :ls!<cr>
nnoremap <silent> <leader>bn :enew<cr>
nnoremap <silent> <leader>bl :ls!<cr>
nnoremap <silent> <leader>. :bnext<cr>
nnoremap <silent> <leader>, :bprev<cr>
nnoremap <silent> K :bprev<CR>
nnoremap <silent> J :bnext<CR>
nnoremap <silent> <leader>bb :ls<CR>:b<Space>
nnoremap <silent> <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <silent> <leader>bc :b#<bar>bd#<CR>
nnoremap <silent> <leader>bD :bdelete<cr>
nnoremap <silent> <leader>b/ :bufdo /

" Move lines above and below others
nnoremap mlj mz:m+<cr>`z
nnoremap mlk mz:m-2<cr>`z
vnoremap <leader>mj :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <leader>mk :m'<-2<cr>`>my`<mzgv`yo`z
vnoremap < <gv
vnoremap > >gv


" set paste
map <leader>pp :setlocal paste!<cr>         
map <leader>pt :setlocal pastetoggle<cr>
map <leader>pi Jp

" convenience mappings (command with ;, escape insert with jj and ;;)
noremap ; :
imap jk <ESC>
imap <C-d> <ESC>ciw
imap <C-S-d> <ESC>ciW
imap <C-Space> <ESC>
imap <S-CR> <ESC>
imap <S-BS> <ESC>$v^xi
imap <C-CR> <ESC>o
imap <C-S-CR> <ESC>O

" copies the content of current buffer and creates a new buffer with it
nmap ,cp ggVGy<ESC><Space>bnp:w 

" Git functions
nmap <leader>ga :!git add --a<CR>
nmap <leader>gc :!git commit -m ""<Left>
nmap <leader>gpo :!git push origin master<CR>

" clear search highlights
noremap <silent> <leader><BS> :nohlsearch<CR>

" Save operations
nnoremap ,cgl :e ~/.config/<CR>
nnoremap ,cnl :e ~/.config/nvim/init.vim<CR>
nnoremap ,cvl :e ~/.vimrc<CR>
nnoremap ,czl :e ~/.zshrc<CR>
nnoremap ,cns :source ~/.config/nvim/init.vim<CR>
nnoremap ,cvs :source ~/.vimrc<CR>
nnoremap ,czs :source ~/.zshrc<CR>

" Fold operations
nmap ,fo :foldopen<CR>
nmap ,fc :foldclose<CR>

" Datetime string operations
nnoremap <leader>id :<c-u>put =strftime('%m/%d/%y')<cr>i<BS><ESC>Ea 
imap ,.d <esc>:put =strftime('%m/%d/%y')<cr>i<BS><ESC>lvES$<CR>Ea<Space>
imap ,.D [<esc>:put =strftime('%m/%d/%y')<cr>i<BS><ESC>Ea]<Space>
nnoremap <leader>it :<c-u>put =strftime('%h:%m')<CR>i<BS><ESC>E
imap ,.t <esc>:put =strftime('%H:%M')<CR>i<bs><ESC>lvES$<CR>Ea<Space>
imap ,.T [<esc>:put =strftime('%H:%M')<CR>i<bs><ESC>Ea<Space>]
nnoremap <leader>vc :e ~/.config/nvim/init.vim<cr>

augroup every
    autocmd!
    au InsertEnter * set norelativenumber
    au InsertLeave * set relativenumber
augroup END

au FileType rust nmap <silent> <leader>rc :!cargo check<CR>
au FileType rust nmap <silent> <leader>rr :!cargo run<CR>
au FileType rust nmap <silent> <leader>rb :!cargo build<CR>
au FileType rust nmap <silent> <leader>rt :e Cargo.toml<CR>
"args
"from outside
nnoremap <leader>G :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|

nnoremap <leader>rw :%s/\<<C-r><C-w>\>/<C-r><C-w>
vnoremap <leader>rw y:%s/<C-r>"/<C-r>"
imap <C-r> <ESC>:%s///gi<left><left><left><left>
nmap <C-r> :%s///gi<left><left><left><left>
nmap <C-r> :%s///gi<left><left><left><left>
nmap <C-S-r> :%s///g<left><left><left>
nmap U :redo<CR>

au TerminalOpen * if &buftype == 'terminal' | setlocal bufhidden=hide | endif
augroup Terminal
    au!
    autocmd TerminalOpen  ,* setlocal nonumber norelativenumber
    autocmd TerminalWinOpen  ,* setlocal nonumber norelativenumber

augroup END
tnoremap <ESC> <C-\><C-n>
"-----------------------------------------------------

" COMMANDS ------------------------------------------
nnoremap ,t <ESC>:below<space>terminal<space>++open<CR><ESC>:res -4<CR>
nnoremap ,T <ESC>:vert<space>terminal<space>++open<CR><ESC>:res -4<CR>
tnoremap jk <C-\><C-n>
tnoremap <leader>q <ESC>:q!<CR>
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    else
        call cursor(1,1)
    endif
endfunction
