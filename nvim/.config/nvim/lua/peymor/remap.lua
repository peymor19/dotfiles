local opts = { noremap = true, silent = true }

-- Vim escape
vim.api.nvim_set_keymap("i", "jj", "<ESC>", opts)

-- vertical split
-- nnore map <silent> vv <C-w>v

-- Vim Test commands
vim.api.nvim_set_keymap("n", "<Leader>t", "<cmd>TestNearest<cr>", opts)
vim.api.nvim_set_keymap("n", "<Leader>T", "<cmd>TestFile<cr>", opts)

-- Vertical half page jump with screen centering
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", opts)
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", opts)

-- next with screen centering
vim.api.nvim_set_keymap("n", "n", "nzz", opts)
vim.api.nvim_set_keymap("n", "N", "Nzz", opts)

-- Switch lines
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- telescope maps
vim.keymap.set('n', "tt", "<cmd>Telescope<cr>")

-- vim.keymap.set('n', "ff", "<cmd>Telescope find_files hidden=true<cr>")
vim.keymap.set('n', "ff", "<cmd>Telescope find_files hidden=true<cr>")
vim.keymap.set('n', "fg", "<cmd>Telescope live_grep <cr>")
vim.keymap.set('n', "fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set('n', "fn", "<cmd>Telescope help_tags<cr>")

-- COC key maps
vim.keymap.set("n", "gd", "<Plug>(coc-definition)<cr>", opts)
vim.keymap.set("n", "gt", "<Plug>(coc-type-definition)<cr>", opts)
vim.keymap.set("n", "gi", "<Plug>(coc-implementation)<cr>", opts)
vim.keymap.set("n", "gr", "<Plug>(coc-references)<cr>", opts)

-- This allows you to write a buffer as sudo if you are not sudo
vim.keymap.set("c", "w!!", "execute 'silent! write !sudo tee % >/dev/null' <bar> edit!")
