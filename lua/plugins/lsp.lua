return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    'onsails/lspkind.nvim',
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'williamboman/mason.nvim'
        },
        config = function()
            require("mason-lspconfig").setup({
                automatic_installation = false
            })
        end
    },
    {
        'simrat39/rust-tools.nvim',
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities();
            local rt = require("rust-tools");
            local on_attach = function(client)
            end

            rt.setup({
                tools = {
                    runnables = {
                        use_telescope = true,
                    },
                    inlay_hints = {
                        auto = true,
                        show_parameter_hints = false,
                        parameter_hints_prefix = "",
                        other_hints_prefix = "",
                    },
                },
                server = {
                    on_attach = on_attach,
                    capabilities = capabilities,
                    settings = {
                        ["rust-analyzer"] = {
                            checkOnSave = {
                                command = "clippy",
                            },
                            imports = {
                                granularity = {
                                    group = "module",
                                },
                                prefix = "self",
                            },
                            cargo = {
                                buildScripts = {
                                    enable = true,
                                },
                            },
                            procMacro = {
                                enable = true
                            },
                        }
                    }
                }
            });
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig');
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- lspconfig.rust_analyzer.setup({
            --     capabilities = capabilities,
            --     settings = {
            --         ["rust-analyzer"] = {}
            --     },
            -- })

            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
            })

            lspconfig.tsserver.setup({
                capabilities = capabilities,
                filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
                cmd = { "typescript-language-server", "--stdio" }
            });

            lspconfig.sumneko_lua.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                            version = 'LuaJIT',
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = { 'vim' },
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        -- Do not send telemetry data containing a randomized but unique identifier
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            });

            require("fidget").setup({})
        end
    },
    {
        'glepnir/lspsaga.nvim',
        event = 'BufRead',
        config = function()
            require('lspsaga').setup({})
        end
    },
    {
        "phaazon/mind.nvim",
        branch = "v2.2",
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
            require("mind").setup()
        end,
    }
};
