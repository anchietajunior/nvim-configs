" Import Pluggins
source $HOME/.config/nvim/configs/plugs.vim

" Import default configurations
source $HOME/.config/nvim/configs/defaults.vim

" Import lsp configurations
source $HOME/.config/nvim/configs/lsp.vim

" Compe
source $HOME/.config/nvim/configs/compe.vim

" Mappings
source $HOME/.config/nvim/configs/mappings.vim


" Starting options
autocmd VimEnter * NERDTree | wincmd p
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

autocmd BufWritePre *.rb lua vim.lsp.buf.formatting_sync(nil, 100)


