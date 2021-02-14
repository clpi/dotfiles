" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing extra messages when using completion
set shortmess+=c

" Configure LSP
" https://github.com/neovim/nvim-lspconfig#rust_analyzer
lua <<EOF

-- nvim_lsp object
local nvim_lsp = require'lspconfig'

-- function to attach completion when setting up lsp
local on_attach = function(client)
    require'completion'.on_attach(client)
end

-- Enable rust_analyzer
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
EOF

" Code navigation shortcuts
" as found in :help lsp
nnoremap <silent> ,d <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> ,D <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> ,a <cmd>lua vim.lsp.buf.code_actions()<CR>
nnoremap <silent> ,h     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> ,m    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> ,s <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> ,t   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> ,r    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> ,R    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ,S    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> ,w    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" rust-analyzer does not yet support goto declaration
" re-mapped `gd` to definition
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
setlocal omnifunc=v:lua.vim.lsp.omnifunc
"nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

" Trigger completion with <tab>
" found in :help completion
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ completion#trigger_completion()

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hover
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" Enable type inlay hints
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
\ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment" }
