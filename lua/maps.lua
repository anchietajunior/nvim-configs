-- MAPPINGS
vim.g.mapleader = ',' -- leader
vim.api.nvim_set_keymap('n', '<leader>f', [[<cmd>Telescope find_files<cr>]], { noremap = true, silent = true })

-- turn off search highlighting
vim.api.nvim_set_keymap('n', '<leader>nh', ':nohlsearch<cr>', { noremap = true })

-- delete text without yanking
vim.api.nvim_set_keymap('n', '<leader>d', '"_d', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>d', '"_d', { noremap = true })