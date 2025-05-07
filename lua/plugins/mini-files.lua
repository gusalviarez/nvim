return {
    'echasnovski/mini.files',
    version = '*',
    keys = {
        {
            "<leader>ef",
            function()
                local MiniFiles = require("mini.files")
                local _ = MiniFiles.close() or MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
                MiniFiles.reveal_cwd()
            end,
            { noremap = true, silent = true, desc = "Open File Explorer" },
        },
    },
}
