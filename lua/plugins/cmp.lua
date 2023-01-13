return {
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    { 'tzachar/cmp-tabnine', build = './install.sh', dependencies = 'hrsh7th/nvim-cmp' },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp');
            local lspkind = require('lspkind');
            local source_mapping = {
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[Lua]",
                cmp_tabnine = "[TN]",
                path = "[Path]",
            };

            cmp.setup({
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
                        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                    end,
                },
                window = {
                    -- completion = cmp.config.window.bordered(),
                    -- documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                    ['<Tab>'] = cmp.mapping.select_next_item(),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = 'path' }, -- file paths
                    { name = 'nvim_lsp' }, -- from language server
                    { name = 'nvim_lsp_signature_help' }, -- display function signatures with current parameter emphasized
                    { name = 'nvim_lua' }, -- complete neovim's Lua runtime API such vim.lsp.*
                    { name = 'buffer' }, -- source current buffer
                    { name = 'vsnip' }, -- nvim-cmp source for vim-vsnip
                    { name = "cmp_tabnine" }
                }),
                formatting = {
                    format = function(entry, vim_item)

                        -- if you have lspkind installed, you can use it like
                        -- in the following line:
                        vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = "symbol" })
                        vim_item.menu = source_mapping[entry.source.name]
                        if entry.source.name == "cmp_tabnine" then
                            local detail = (entry.completion_item.data or {}).detail
                            vim_item.kind = ""
                            if detail and detail:find('.*%%.*') then
                                vim_item.kind = vim_item.kind .. ' ' .. detail
                            end

                            if (entry.completion_item.data or {}).multiline then
                                vim_item.kind = vim_item.kind .. ' ' .. '[ML]'
                            end
                        end
                        local maxwidth = 80
                        vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
                        return vim_item
                    end,
                },
            })
        end
    }
};
