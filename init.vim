call plug#begin()

Plug 'preservim/nerdtree'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug '9mm/vim-closer'
Plug 'tpope/vim-commentary'
Plug 'rakr/vim-one'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()

set encoding=UTF-8
syntax on
set t_Co=16
syntax enable
set ruler
set number
set termguicolors
set background=dark
colorscheme gruvbox
set mouse=a
set tabstop=2
set shiftwidth=2
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" set guifont=Fira\ Code:h20
set guifont=Fira_Code_Nerd_Font:h16

let mapleader=','

" General
nmap <leader>z :u<CR>
nmap <leader>Q :qa!<CR>
nmap <leader>q :q<CR>

" NERDTree
nnoremap <leader>. :NERDTreeFocus<CR>
nnoremap <leader>b :NERDTreeToggle<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

" AirLine
let g:airline#extensions#tabline#enabled = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5

" RSpec.vim mappings
map <Leader>tf :call RunCurrentSpecFile()<CR>
map <Leader>tn :call RunNearestSpec()<CR>
map <Leader>ta :call RunAllSpecs()<CR>

let g:webdevicons_enable = 1
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:airline_powerline_fonts = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:webdevicons_enable_nerdtree = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:coc_global_extensions = ['coc-solargraph']

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
