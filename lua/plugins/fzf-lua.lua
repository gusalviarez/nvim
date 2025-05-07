return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
        {
            "<leader>ff",
            function()
                require('fzf-lua').files()
            end,
            desc = "open files",
        },
        {
            "<leader>fb",
            function()
                require('fzf-lua').buffer()
            end,
            desc = "open buffers",
        },
    }
}
