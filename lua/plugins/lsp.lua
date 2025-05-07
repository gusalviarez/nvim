local servers = { "lua_ls", "clangd", "marksman", "cssls", "ts_ls", "jsonls", "yamlls", "html" }

return {
    {
        {
            "williamboman/mason.nvim",
            config = true
        },
        {
            "williamboman/mason-lspconfig.nvim",
            opts = {
                ensure_installed = servers,
            }
        }, {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            }, },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            vim.diagnostic.config({ virtual_text = true })
            ----- autocmd
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    local opts = { buffer = ev.buf }
                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
                    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
                    vim.keymap.set('n', 'lr', vim.lsp.buf.references, opts)
                    vim.keymap.set('n', '<leader>lf', function()
                        vim.lsp.buf.format { async = true }
                    end, opts)
                    vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
                end,
            })
            ------
            for _, server in ipairs(servers) do
                local config = {
                    capabilities = capabilities,
                }
                lspconfig[server].setup(config)
            end
            ------
        end,
    }
    }
}
