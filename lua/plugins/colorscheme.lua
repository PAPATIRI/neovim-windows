return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme catppuccin-mocha") -- catppuccin-mocha, catppuccin-latte, catppuccin-frappe, catppuccin-macchiato
        end,
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').setup({
                -- Disable italic for comments and other elements
                italic = false,
                -- Override specific highlight groups
                override = {
                    MiniIndentscopeSymbol = {
                        fg = "#4C566A", -- Adjust color as needed
                        italic = false,
                    },
                    EndOfBuffer = { fg = "bg" },
                },
            })
            vim.cmd.colorscheme 'nordic'

            -- Ensure MiniIndentscopeSymbol is not italic after colorscheme is applied
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "nordic",
                callback = function()
                    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#4C566A", italic = false })
                    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg })
                end,
            })
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme 'rose-pine' -- pine-moon, pine-dawn, pine
        end,
    },
}
