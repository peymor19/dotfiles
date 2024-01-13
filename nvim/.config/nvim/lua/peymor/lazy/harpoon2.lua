return {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
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
    end
}
