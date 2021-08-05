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
autocmd BufWritePre *.rb lua vim.lsp.buf.formatting_sync(nil, 100)


