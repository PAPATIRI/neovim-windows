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
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'rose-pine' -- pine-moon, pine-dawn, pine
        end,
    },
}
