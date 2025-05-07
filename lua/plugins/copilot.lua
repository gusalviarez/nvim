return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",

    config = function()
        require("copilot").setup({
            suggestion = {
                enabled = false,
                debounce = 50,
                keymap = {
                    accept = "<C-f>",
                    accept_word = false,
                    dismiss = "<C-}>",
                },
            },

            filetypes = {
                markdown = true,
                gitcommit = true,
                ["*"] = true,
            },
        })
    end,
}
