-- MAPPINGS
vim.g.mapleader = ',' -- leader
vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>Telescope find_files<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>Telescope live_grep<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bu', [[<cmd>Telescope live_grep<cr>]], { noremap = true, silent = true })

-- turn off search highlighting
vim.api.nvim_set_keymap('n', '<leader>nh', ':nohlsearch<cr>', { noremap = true })

-- delete text without yanking
vim.api.nvim_set_keymap('n', '<leader>d', '"_d', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>d', '"_d', { noremap = true })

-- Add frozen_string_literal: true to ruby files
vim.api.nvim_set_keymap('n', '<leader>kk', 'i# frozen_string_literal: true<CR><Esc>', { noremap = true })

-- NERDTREE
vim.api.nvim_set_keymap('n', '<leader> ', ':NERDTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>.', ':NERDTreeFind<CR>', { noremap = true })

-- LSP
vim.api.nvim_set_keymap('n', 'gd', 'lua vim.lsp.buf.definition()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gD', 'lua vim.lsp.buf.declaration()<CR>', { noremap = true })

-- SAGA
vim.api.nvim_set_keymap('n', ';;', '<cmd>Lspsaga show_line_diagnostics<CR>', { noremap = true })

-- BARBAR
vim.api.nvim_set_keymap('n', '<leader>bf', ':BufferLast<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>co', ':BufferCloseAllButCurrent<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>2', ':BufferNext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>1', ':BufferPrevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>cb', ':BufferClose<CR>', { noremap = true })

-- TEST
vim.api.nvim_set_keymap('n', '<leader>tn', ':TestNearest<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tf', ':TestFile<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ta', ':TestSuite<CR>', { noremap = true })

