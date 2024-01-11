local opts = { noremap = true, silent = true }

local normal_map = function(command, output)
    vim.api.nvim_set_keymap('n', command, output, opts)
end

local insert_map = function(command, output)
    vim.api.nvim_set_keymap('i', command, output, opts)
end

-- Vim escape
insert_map("jj", "<ESC>", { noremap = true })

-- Icon Picker commands
normal_map("<Leader><Leader>i", "<cmd>IconPickerNormal<cr>")

-- Vim Test commands
normal_map("<Leader>t", "<cmd>TestNearest<cr>")
normal_map("<Leader>T", "<cmd>TestFile<cr>")

-- Harpoon commands
local harpoon = require("harpoon")
harpoon:setup()

local harpoon_menu = function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end

local harpoon_add = function() harpoon:list():append() end

local harpoon_1 = function() harpoon:list():select(1) end
local harpoon_2 = function() harpoon:list():select(2) end
local harpoon_3 = function() harpoon:list():select(3) end
local harpoon_4 = function() harpoon:list():select(4) end

local harpoon_next = function() harpoon:list():prev() end
local harpoon_previous = function() harpoon:list():next() end

vim.keymap.set("n", "mm", harpoon_menu)
vim.keymap.set("n", "ma", harpoon_add)

vim.keymap.set("n", "mh", harpoon_1)
vim.keymap.set("n", "mj", harpoon_2)
vim.keymap.set("n", "mk", harpoon_3)
vim.keymap.set("n", "ml", harpoon_4)

vim.keymap.set("n", "mn", harpoon_next)
vim.keymap.set("n", "mp", harpoon_previous)

-- Vertical half page jump with screen centering
normal_map("<C-d>", "<C-d>zz")
normal_map("<C-u>", "<C-u>zz")

-- next with screen centering
normal_map("n", "nzz")
normal_map("N", "Nzz")

-- telescope maps
normal_map("tt", "<cmd>Telescope<cr>")
normal_map("ff", "<cmd>Telescope find_files hidden=true<cr>")
normal_map("fg", "<cmd>Telescope live_grep <cr>")
normal_map("fb", "<cmd>Telescope buffers<cr>")
normal_map("fn", "<cmd>Telescope help_tags<cr>")

-- COC key maps
normal_map("gd", "<Plug>(coc-definition)<cr>")
normal_map("gt", "<Plug>(coc-type-definition)<cr>")
normal_map("gi", "<Plug>(coc-implementation)<cr>")
normal_map("gr", "<Plug>(coc-references)<cr>")

