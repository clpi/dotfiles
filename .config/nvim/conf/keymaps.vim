" --------------- XXX Term mappings --------------
imap <expr> <C-c> col('.') == 1 ? '<esc>' : '<esc>l'
imap <C-d> <ESC>diwi
imap <expr> jk col('.') == 1 ? '<esc>' : '<esc>l'


imap JK jk
imap Jk jk
tnoremap <ESC> <C-\><C-n>
tnoremap jk <C-\><C-n>
tnoremap ;         <C-\><C-n>:
" swap line/normal visual mode
" noremap V v
" noremap v V

"  " --------------TODO MAPPINGS---------------------
map <Space> <Leader>
map <Space><space> <Leader><Leader>
" trailing whitespace
nnoremap ,tws /\s\+$\\| \+\ze\t<cr>
nmap <leader>cd :cd %:p:h<cr>:pwd<cr>
noremap 0 ^
nmap U :redo<CR>
vnoremap $ g_
nnoremap Y y$
nnoremap Q @q
vnoremap Q :normal @q
" Repeat last substitute with flags
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" nmap <silent> <esc> <c-u>\
nnoremap <silent> <space>vc :e ~/.config/nvim/init.vim<cr>
nnoremap <silent> ,vc <ESC>:source %<CR>
map , ,

vnoremap < <gv
vnoremap > >gv
vnoremap ,ss :sort<CR>

" -------------------XXX WINDOW MAPPINGS -----------------------
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

nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l
nnoremap <Up> <C-W>k
nnoremap <Down> <C-W>j

" Close window
nnoremap <silent> <leader>wq :<C-u>wincmd q<CR>
nnoremap <silent> <leader>wc :<C-u>wincmd q<CR>

" Split mappings
nnoremap <leader>L <C-w>v<C-w>l
nnoremap <leader>J <C-w>s<C-w>j
nnoremap <leader><leader>l <C-w>v
nnoremap <leader><leader>j <C-w>s

" Resize splits
nnoremap <silent> <leader>rh 5<C-w><
nnoremap <silent> <leader>rj 5<C-w>-
nnoremap <silent> <leader>rk 3<C-w>+
nnoremap <silent> <leader>rl 3<C-w>>

" -------------------XXX SAVE MAPPINGS -----------------------
" save functions
nnoremap <space>w :<C-U>update<cr>
nnoremap <space>q :<C-U>x<cr>
nnoremap <space>Q :<C-U>qa<cr>
nnoremap <space><space>q :qa<cr>
"inoremap <C-s> <Esc>:w<CR>i
cmap w!! %!sudo tee > /dev/null %
nnoremap <silent> <leader>cd :<C-U>lcd %:p:h<CR>:pwd<CR>


xnoremap $ g_

" -------------------XXX TAB MAPPINGS -----------------------
" Tab operations
let g:lasttab = 1
nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> tn :tabnew<cr>
nnoremap <silent> t1 1gt
nnoremap <silent> t2 2gt
nnoremap <silent> t3 3gt
nnoremap <silent> <leader>td :tabclose<cr>
nnoremap <silent> td :tabclose<cr>
nnoremap <silent> td :WintabsCloseVimtab<cr>
nnoremap <silent> tm :tabmove
nnoremap <silent> tmh :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> tml :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
" nnoremap <silent> <Tab> gt
" nnoremap <silent> <S-Tab> gT
nnoremap <silent> H gT
nnoremap <silent> L gt
nnoremap <silent> tt :exe "tabn ".g:lasttab<CR>
nnoremap <silent> <space>t<tab> :exe "tabn ".g:lasttab<CR>
nnoremap <silent> te :tabedit <C-r>=expand("%:p:h")<cr>/
nnoremap <silent> <space>te :tabedit <C-r>=expand("%:p:h")<cr>/
au TabLeave * let g:lasttab = tabpagenr()
" move a split into its own tab
nnoremap ts <C-w>T
nnoremap <space>ts <C-w>T
nnoremap tx :tabdo
nnoremap <silent> <space>tx :tabdo

" -------------------XXX BUF MAPPINGS -----------------------
"
" Change buffers
" nnoremap <silent> <leader>> :bnext<cr>
" nnoremap <silent> <leader>< :bprev<cr>
nnoremap <silent> <leader>. :bnext<cr>
nnoremap <silent> <leader>, :bprev<cr>
nnoremap <silent> <space><tab> <c-^> "switch between last two
nnoremap <silent> <space><space><tab> :b <C-Z>
nnoremap <silent> K :bprev<CR>
"nnoremap <silent> J :bnext<CR>
nnoremap <silent> <leader>bb :ls<CR>:b<Space>
nnoremap <silent> <leader>bn :enew<cr>
nnoremap <silent> <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <silent> <leader>bc :b#<bar>bd#<CR>
nnoremap <silent> <leader>bD :bdelete<cr>
"nnoremap K <Plug>(wintabs_previous)
"nnoremap J <Plug>(wintabs_next)
nnoremap <silent> K <ESC>:WintabsPrevious<CR>
nnoremap <silent> J <ESC>:WintabsNext<CR>
nnoremap <silent> td <ESC>:WintabsCloseVimtab<CR>
nnoremap <silent> tu <ESC>:WintabsUndo<CR>
nnoremap <silent> to <ESC>:WintabsOnlyVimtab<CR>
nnoremap <silent> tcw <Plug>(wintabs_close_window)
nnoremap <silent> tow <Plug>(wintabs_only_window)

" ----------------- XXX MOVE LINE UP/DOWN
nnoremap mlj mz:m+<cr>`z
nnoremap mlk mz:m-2<cr>`z
vnoremap <leader>mj :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <leader>mk :m'<-2<cr>`>my`<mzgv`yo`z

" ------------------ set paste ------------------
map <leader>pp :setlocal paste!<cr>
map <leader>pt :setlocal pastetoggle<cr>

" _----------------- CONVENIENT ESC _-------------
nnoremap ; :
xnoremap ; :
" xnoremap jk <ESC>
" cnoremap jk <C-C>
"
"


" copies the content of current buffer and creates a new buffer with it
nmap ,cp ggVGy<ESC><Space>bnp:w
noremap <silent> <leader><BS> :nohlsearch<CR>
nnoremap g/ *zvzz
nnoremap g? #zvzz
" Show documentation

" ---------- XXX C-s : Session commands ---------"
nnoremap <silent> <c-s>         :CocCommand session.save<space><CR>
nnoremap <silent> ,ss           :CocCommand session.save<space><CR>
nnoremap <silent> <c-s><c-s>    :CocCommand session.save<space><CR>
nnoremap <silent> <c-s>s        :CocCommand session.save<space><CR>
nnoremap <silent> <c-s><c-l     :CocCommand session.load<CR>
nnoremap <silent> <c-s>l        :CocCommand session.load<CR>
nnoremap <silent> ,sl           :CocCommand session.load<CR>
nnoremap <silent> <space>,s           :CocCommand session.load<CR>
nnoremap <silent> ,s,           :CocList sessions<CR>
nnoremap <silent> <c-s><cr>     :CocList sessions<CR>
nnoremap <silent> <c-s><space>  :CocList sessions<CR>


" -------------------- SURROUND ----------------------
" nmap <leader>sw ysiw
" nmap <leader>sl yss
" nmap <leader>sd ds
" vmap <leader>s S

" -------------------- FOLD ----------------------
nmap ,fo :foldopen<CR>
nmap ,fc :foldclose<CR>

" ------------------- TIME INSERT ----------------
nnoremap <leader>id :<c-u>put =strftime('%m/%d/%y')<cr>i<BS><ESC>Ea
imap ,.d <esc>:put =strftime('%m/%d/%y')<cr>i<BS><ESC>lvES$<CR>Ea<Space>
imap ,.D [<esc>:put =strftime('%m/%d/%y')<cr>i<BS><ESC>Ea]<Space>
nnoremap <leader>it :<c-u>put =strftime('%h:%m')<CR>i<BS><ESC>E
imap ,.t <esc>:put =strftime('%H:%M')<CR>i<bs><ESC>lvES$<CR>Ea<Space>
imap ,.T [<esc>:put =strftime('%H:%M')<CR>i<bs><ESC>Ea<Space>]

" ----------------- FIND/REPLACE -------------------------
imap <C-r> <ESC>:%s///gi<left><left><left><left>
nmap <C-r> :%s///gi<left><left><left><left>
nmap <C-r> :%s///gi<left><left><left><left>
"nmap <C-S-r> <ESC>:bufdo %s///ge | update<left><left><left><left><left><left><left><left><left>
" nmap <C-S-r> :%s///g<left><left><left>

" ------------------------XXX VIM SMOOTHIE MAPS ----------
"  TODO consider mapping these to some more important functionaity
"
nmap <C-j> <Plug>(SmoothieDownwards)
nmap <C-k> <Plug>(SmoothieUpwards)
nmap gj <Plug>(SmoothieDownwards)
nmap gk <Plug>(SmoothieUpwards)
nmap gJ <Plug>(SmoothieForwards)
nmap gK <Plug>(SmoothieBackwards)
" nmap <silent> <ScrollWheelDown> <c-d>
" nmap <silent> <ScrollWheelUp>   <c-u>
"  ----------------------XXX POSITIONIGN -----------
nnoremap m. <C-e>
nnoremap m, <C-e>
nnoremap md <C-e>
nnoremap mu <C-y>
nnoremap <Left> <C-o>
nnoremap <Right> <C-i>


" ---------------- TOGGLES (<space>t) ------------------------------
nnoremap <silent> <Space>td :DBUIToggle<CR>
nnoremap <silent> <Space>tb :TagbarToggle<CR>
nnoremap <silent> <Space>tv :Vista!!<CR>
nnoremap <silent> <space>tp :setlocal pastetoggle!<cr>
nnoremap <silent> <Space>te :CocCommand explorer<CR>
nnoremap <silent> <Space>ta :call ToggleHiddenAll()<CR>
nnoremap <silent> <Space>tt :call TerminalToggle()<cr>
nnoremap <silent> <Space>tc :call ToggleCalendar()<cr>
nnoremap <silent> <Space>tn :set number relativenumber!<CR>
nnoremap <silent> <Space>ts :set spell!<CR>
nnoremap <silent> <Space>tg :Goyo!<CR>


" nnoremap <silent> <Space>tu :UndotreeToggle<CR>
" nnoremap <silent> <Space>tm :MinimapToggle<CR>
" nnoremap <silent> <Space>tE :call ToggleNetrw(0)<CR>
nnoremap <silent> ,tt       :call TerminalToggle()<cr>

" --------------- CTRL CMDS --------------------
" nnoremap <silent> <cr>               :Clap files<CR>
nnoremap <silent> <C-p>        :CocFzfList commands<CR>
"nnoremap <silent> <C-e>        :Clap filer<CR>
" nnoremap <silent> <C-f>        :Clap filer<CR>
nnoremap <silent> <c-;>        :Clap cmd_history<CR>
nnoremap <silent> <c-cr>       :Clap command<CR>
nnoremap <silent> <c-s-cr>       :Clap coc_commands<CR>
nnoremap <silent> <space><cr>        :Clap files<CR>
nnoremap <silent> <space><space><cr> :Rg<CR>
" nnoremap <silent> <space><cr><space> :Buffers<CR>
" imap <C-h> <ESC>i
" imap <C-l> <ESC>la
" imap <C-k> <ESC>ka
" imap <C-j> <ESC>ja
"
"
