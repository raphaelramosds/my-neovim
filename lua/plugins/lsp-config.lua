return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {},
            },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                -- Language Servers
                ensure_installed = {
                    "lua_ls",
                    -- "ts_ls",
                    "phpactor",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            vim.lsp.config['lua_ls'] = {
                cmd = { 'lua-language-server' },
                root_markers = { '. luarc.json', '.luarc.jsonc', '.luacheckrc', '.stylua.toml', 'stylua.toml', 'selene.toml', 'selene.yml', '. git' },
                capabilities = capabilities,
            }
            
            -- TODO It requires Node.js installed
            -- vim.lsp.config['ts_ls'] = {
            --     cmd = { 'typescript-language-server', '--stdio' },
            --     root_markers = { 'package.json', 'tsconfig. json', 'jsconfig.json', '.git' },
            --     capabilities = capabilities,
            -- }
            
            vim.lsp.config['phpactor'] = {
                cmd = { 'phpactor', 'language-server' },
                root_markers = { 'composer.json', '. git' },
                capabilities = capabilities,
            }

            -- Habilita os LSPs automaticamente
            vim.lsp.enable('lua_ls')
            -- vim.lsp.enable('ts_ls')
            vim.lsp.enable('phpactor')

            vim.diagnostic.config({
                virtual_text = {
                    prefix = "",
                    severity_sort = true,
                },
                signs = true,
                underline = true,
                update_in_insert = false,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        end,
    },
}
