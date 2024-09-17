return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local gwidth = vim.api.nvim_list_uis()[1].width
        local gheight = vim.api.nvim_list_uis()[1].height
        local width = 70
        local height = gheight - 10

        require("nvim-tree").setup({
            view = {
                float = {
                    enable = true,
                    quit_on_focus_loss = true,
                    open_win_config = {
                        relative = "editor",
                        width = width,
                        height = height,
                        row = (gheight - height) * 0.5,
                        col = (gwidth - width) * 0.5,
                    },
                },
            },
        })
        -- toggle file tree
        vim.keymap.set("n", "<leader>fe", "<cmd> NvimTreeToggle <CR>", {})
        -- focus
        vim.keymap.set("n", "<leader>fc", "<cmd> NvimTreeFocus <CR>", { noremap = true, silent = true })
    end,
}
