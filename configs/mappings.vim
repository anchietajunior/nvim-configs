" Leader key
let mapleader=','

" General

" Undo
nnoremap <silent> <C-z> :u<CR>
" Close Neovim
nnoremap <silent> <C-q> :qa!<CR>
" Close buffer
nmap <leader>q :bw<CR>
" Copy to clipboard
nnoremap <silent> <C-c> :"*y<CR>

" LSP Saga
nnoremap <silent> ;; <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> ;l <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
nnoremap <silent> <leader>;c <cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>
nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>

" NERDTree
nnoremap <leader>. :NERDTreeFocus<CR>
nnoremap <leader>/ :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

" AirLine
nmap <leader>2 :bnext<CR>
nmap <leader>1 :bprevious<CR>

" RSpec.vim mappings
" map <Leader>tf :call RunCurrentSpecFile()<CR>
" map <Leader>tn :call RunNearestSpec()<CR>
" map <Leader>ta :call RunAllSpecs()<CR>

" Signify
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk

" Vim-test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>

" QuickUI
noremap <space><space> :call quickui#menu#open()<cr>
