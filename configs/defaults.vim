set clipboard=unnamedplus
set encoding=UTF-8
syntax on
set t_Co=16
syntax enable
set ruler
set number
set termguicolors
set background=dark
colorscheme gruvbox
" colorscheme onedark
" colorscheme monokai
set wrap
set linebreak
set mouse=a
set tabstop=2
set shiftwidth=2
highlight Cursor guifg=white guibg=steelblue
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon10
set guicursor+=i:blinkwait10


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Signify
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" WebdevIcons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" NERDTree
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Vim-test
let test#strategy = "neovim"

" QuickUI
let g:quickui_color_scheme = 'gruvbox'
" install a 'File' menu, use [text, command] to represent an item.
call quickui#menu#install('&File', [
            \ [ "&Buffers", 'Telescope buffers' ],
            \ [ "&Show File in NERDTree", ':NERDTreeFind' ],
            \ [ "&Close File", ':bw' ],
            \ [ "--", '' ],
            \ [ "&Find Files", 'Telescope find_files' ],
            \ [ "&Find in Files", 'Telescope live_grep' ],
            \ [ "--", '' ],
            \ [ "E&xit", ':qa!' ],
            \ ])
