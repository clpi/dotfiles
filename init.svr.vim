" NOTES
" TODO LEARN MACROS: press q[ key ] to record, hit q to stop recording, @[ key ] to play

" 
" --------------GENERAL--------------
set history=500
set shell=/bin/zsh
filetype plugin on
filetype indent on
set autoread
au FocusGained,BufEnter * checktime

let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set wildmenu
set wildoptions=pum
set wildmode=full

" set pumblend=20
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif
set number
set ruler
set cmdheight=2
set hidden
set ignorecase
set hlsearch
set incsearch 
set lazyredraw 
set magic
set showmatch 
set mat=2
set noerrorbells
set novisualbell
set tm=500
" set foldcolumn=2
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
" set winblend=20
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set cursorline
" disable for space?
set signcolumn=yes
set cmdheight=1
set updatetime=300
set shortmess+=c
set splitbelow
set splitright
set history=500
set shell=/bin/zsh
filetype plugin on

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif
"" ----------- plugins ---------
call plug#begin('~/.config/nvim/plugged')
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" Plug 'phanviet/vim-monokai-pro'
Plug 'fatih/vim-go'
" Plug 'crusoexia/vim-monokai'
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet-snippets'
" Plug 'joshdick/onedark.vim'
" Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': './install --bin' } 
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
" Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-rooter'
" Plug 'AndrewRadev/splitjoin.vim'
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim_lsp'
" Plug deoplete
call plug#end()

"----------nvim lsp setup-------------"
" lua require 'nvim_lsp'.rust_analyzer.setup{}
" autocmd Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#source('_', 'max_menu_width', 80)
" let g:SuperTabDefaultCompletionType = "<c-n>"
" autocmd BufWrite * :Autoformat " rustfmt on write using autoformat
" autocmd BufWrite * :Autoformat "TODO: clippy on write
" nnoremap <leader>c :!cargo clippy
"------------/nvim lsp----------------""


au BufRead,BufNewFile *.wiki set filetype=vimwiki
" --------------themes---------------
" let g:airline_theme='onedark'
" let colorscheme='onedark'
" colorscheme onedark
let g:airline_theme='base16_chalk'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:rainbow_active = 1

" Looks good: summerfruit-dark, onedark
" let g:airline_statusline_ontop=1
let colorscheme='base16-chalk'
colorscheme base16-chalk 
set termguicolors
" FOR TRANSPARENT BACKGROUND
"highlight Normal ctermbg=NONE guibg=NONE
"highlight SignColumn ctermbg=NONE guibg=NONE
"highlight TablineFill ctermbg=NONE 
"highlight TabLine ctermbg=NONE
"highlight Number ctermbg=NONE
let g:onedark_termcolors = 256
" set termguicolors
" --------------NERDTree------------
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let g:nerdtree_tabs_open_on_console_startup=1

" Emmet leader key: So trigger emmet with ,,
" let g:user_emmet_leader_key='`'
" -------------AUTOCOMPLETE-------------
augroup CocDisableFileTypes
    autocmd FileType python CocEnable
    autocmd FileType javascript CocEnable
    autocmd FileType rust CocEnable
    autocmd FileType go CocEnable
    autocmd FileType html CocEnable
    autocmd FileType markdown CocDisable
    autocmd FileType vimwiki CocDisable
    autocmd FileType text CocDisable
    autocmd FileType rst CocDisable
    autocmd FileType json CocDisable
    autocmd FileType markdown setlocal signcolumn=no cmdheight=1
    autocmd FileType vimwiki setlocal signcolumn=no cmdheight=1 
    autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType yml setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType toml setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType vue setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"FZF floating window
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
let $FZF_DEFAULT_OPTS=' --color=dark --layout=reverse  --margin=1,4'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(30)
  let width = float2nr(80)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction
" -------------COMMANDS-----------------
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" --------------MAPPINGS---------------------
map <Space> <Leader>

" these two don't work -- just get used to C-u and C-d!!
map <C-k> <C-u> 
map <C-j> <C-d>
nnoremap L $
nnoremap H ^
nnoremap U <C-R>

try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-leader> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap ,fi <Plug>(coc-funcobj-i)
xmap ,fa <Plug>(coc-funcobj-a)
omap ,fi <Plug>(coc-funcobj-i)
omap ,fa <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <leader><TAB> <Plug>(coc-range-select)
xmap <silent> <leader><TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>Ca :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>Ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>Cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>Co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>Cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>Cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>Ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>Cr  :<C-u>CocListResume<CR>

" Custom leader commands
nnoremap <silent> <leader>n :<C-u>NERDTreeTabsToggle<CR>
" nnoremap <silent> <leader>n :<C-u>NERDTreeToggle<CR>
nnoremap <silent> <leader>N :<C-u>CocCommand explorer<CR>

" Python commands
nnoremap <silent> <leader>pr :<C-u>CocCommand python.execInTerminal<CR>
nnoremap <silent> <leader>ple :<C-u>CocCommand python.enableLinting<CR>
nnoremap <silent> <leader>plr :<C-u>CocCommand python.runLinting<CR>
nnoremap <silent> <leader>pls :<C-u>CocCommand python.setLinter<CR>
nnoremap <silent> <leader>pt :<C-u>CocCommand python.createTerminal<CR>

" Rename symbol
nnoremap <silent> <leader>ciw :<C-u>CocCommand document.renameCurrentWord<CR>
nmap <leader>rw <Plug>(coc-rename)

" Session Mgmt
nnoremap <silent> <leader>Ss :<C-u>CocCommand session.save<CR>
nnoremap <silent> <leader>Sl :<C-u>CocCommand session.load<CR>

inoremap <silent> <C-f> <ESC>:FZF<CR>
inoremap <silent> <C-S-f> <ESC>:FZF ../<CR>
nnoremap <silent> <C-f> :<C-u>FZF<CR>
nnoremap <silent> <leader>F :<C-U>FZF<cr> 
nnoremap <silent> <leader>f :<C-u>FZF<CR>
nnoremap <silent> <leader>f. :<C-u>FZF ../<CR>
nnoremap <silent> <leader>f.. :<C-u>FZF ../../<CR>
nnoremap <silent> <leader>f... :<C-u>FZF ../../../<CR>

nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
"nmap ; <Plug>(coc-smartf-repeat)
"nmap , <Plug>(coc-smartf-repeat-opposite)

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
nnoremap <leader>L <C-w>v<C-w>l
nnoremap <leader>J <C-w>s<C-w>j
nnoremap <leader><leader>l <C-w>v
nnoremap <leader><leader>j <C-w>s
" nnoremap <tab><tab> <C-w>w
" nnoremap <leader>S <C-w>r

" Resize splits
nnoremap <silent> <leader>rh 5<C-w><
nnoremap <silent> <leader>rj 5<C-w>-
nnoremap <silent> <leader>rk 3<C-w>+
nnoremap <silent> <leader>rl 3<C-w>>

" Terminal mappings
nnoremap <silent> T :<C-u>CocCommand terminal.Toggle<CR>
nnoremap <silent> <leader>T <C-w>s<C-w>j<C-u>:terminal<CR>5<C-w>-i
nnoremap <silent> <leader>TT :term<CR>i

inoremap <C-x> <ESC>:q<CR>
nnoremap <C-x> :q<CR>
nnoremap <leader>w :w<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>w! :w!<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>qq :q!<cr>>
nnoremap <silent> <leader>Q :q!<cr>
nnoremap <leader>WW :w! !sudo tee % > /dev/null<cr>
nnoremap <leader>QQ :qa<cr>
inoremap <C-s> <Esc>:w<CR>i

" Tab operations
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabmove
nnoremap <leader>> gt
nnoremap <leader>< gT
" nnoremap <TAB> gt
" nnoremap <S-TAB> gT

let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Change to pwd
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Change buffers
" nnoremap <leader>> :bnext<cr>
" nnoremap <leader>< :bprev<cr>
nnoremap <leader>. :bnext<cr>
nnoremap <leader>, :bprev<cr>
nnoremap K :bprev<CR>
nnoremap J :bnext<CR>

nnoremap <leader>bn :enew<cr>
nnoremap <silent><leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <silent><leader>bc :b#<bar>bd#<CR>
nnoremap <leader>bD :bdelete<cr>

" Consider remapping these -- just switch buffers for now
" nmap <silent> <leader><Tab> :bnext<cr>
" nmap <silent> <leader><S-Tab> :bprev<cr> 

" Move lines above and below others
nnoremap mlj mz:m+<cr>`z
nnoremap mlk mz:m-2<cr>`z
vnoremap <leader>mj :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <leader>mk :m'<-2<cr>`>my`<mzgv`yo`z

" set paste
map <leader>pp :setlocal paste!<cr>         
map <leader>pt :setlocal pastetoggle<cr>



" vismode

" convenience mappings (command with ;, escape insert with jj and ;;)
noremap ; :
inoremap jk <ESC>
inoremap <S-CR> ;
inoremap <C-CR> ;
inoremap <C-S-CR> ;
inoremap <S-BS> ;

nmap <leader>e ;
nmap <leader>r ;
nmap <leader>E ;
nmap <leader>R ;

" Start REPL
nmap <leader>R :CocCommand terminal.REPL<CR>

" Git functions
nmap <leader>ga :!git add --a<CR>
nmap <leader>gc :!git commit -m ""<Left>
nmap <leader>gpo :!git push origin master<CR>

" clear search highlights
noremap <silent> <leader><BS> :nohlsearch<CR>

" Show documentation
nnoremap <silent> <leader>d :call <SID>show_documentation()<CR>

" select entire buffer
nnoremap <C-a> ggVG

tnoremap <ESC> <C-\><C-n>
tnoremap jk <C-\><C-n>

nmap s ysiw
nmap sp ysiw<p>
nmap ss ysiw<span>
nmap sa ysiw<a>

imap <C-v> <ESC>vi
imap ,v <ESC>v
imap ,dd <ESC>ddi
imap ,dw <ESC>diwi
imap ,w <ESC>Wi
imap ,e <ESC>Ea
imap ,b <ESC>Bi
imap ,s <ESC>ysiwEa
imap ,S <ESC>S
imap ,A <ESC>A
imap ,I <esc>I
imap ,o <ESC>o
imap ,O <ESC>O
imap ,, <ESC>ci
imap ,mlk <ESC>mlki
imap ,mlj <ESC>mlji
imap ,f <ESC>[[a
imap ,j <ESC>ja
imap ,k <ESC>ka

vmap ii <ESC>i
vmap aa <ESC>a
nnoremap <leader>ww :w!


nnoremap <leader>vwi :<C-u>VimwikiIndex<CR>
nnoremap <leader>vwdi :<C-u>VimwikiDiaryIndex<CR>
nnoremap <leader>vwdn :<C-u>VimwikiMakeDiaryNote<CR>
nnoremap <leader>vwdt :<C-u>VimwikiMakeTomorrowDiaryNote<CR>
nnoremap <leader>vwdy :<C-u>VimwikiMakeYesterdayDiaryNote<CR>
autocmd FileType vimwiki map <leader>dn :<C-u>VimwikiMakeDiaryNote<CR>
autocmd FileType vimwiki map <leader>v. :<C-u>VimwikiNextLink<CR>
autocmd FileType vimwiki map <leader>v, :<C-u>VimwikiPrevLink<CR>
nnoremap <leader>id :<c-u>put =strftime('%m/%d/%y')<cr>   
imap ,.d <esc>:put =strftime('%m/%d/%y')<cr>   
nnoremap <leader>it :<c-u>put =strftime('%h:%m')
imap ,.t <esc>:put =strftime('%h:%m')
nnoremap <leader>vc :e ~/.config/nvim/init.vim<cr>
"-----------------------utils -----------------------
"function! s:cleanextraspaces()
    "let save_cursor = getpos(".")
    "let old_query = getreg('/')
    "silent! %s/\s\+$//e
    "call setpos('.', save_cursor)
    "call setreg('/', old_query)
"endfunction
"if has("autocmd")
    "autocmd bufwritepre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call cleanextraspaces()
"endif


let g:vimwiki_list = [
    \{'path': '~/doc/nb/vwiki/'}]

augroup Terminal
    au!
    autocmd TermOpen  ,* setlocal nonumber norelativenumber
augroup END

augroup every
    autocmd!
    au InsertEnter * set norelativenumber
    au InsertLeave * set relativenumber
augroup END

au FileType rust nmap <silent> <leader>rc :!cargo check<CR>
au FileType rust nmap <silent> <leader>rr :!cargo run<CR>
au FileType rust nmap <silent> <leader>rb :!cargo build<CR>
au FileType rust nmap <silent> <leader>mpl iprintln!()<ESC>i

" let b:coc_enabled=0
