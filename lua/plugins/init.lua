return {
    {
        'romgrk/barbar.nvim',
        dependencies = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('bufferline').setup();
        end
    },
    { 'folke/which-key.nvim', lazy = true },
    'kyazdani42/nvim-web-devicons',
    {
        'nvim-tree/nvim-tree.lua',
        config = function()
            require('nvim-tree').setup({
                update_focused_file = {
                    enable = true
                },
                view = {
                    adaptive_size = true
                },
                git = {
                    ignore = false
                }
            })
        end
    },
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup {
                style = 'darker'
            }
            require('onedark').load()
        end
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        dependencies = {
            'nvim-lua/plenary.nvim',
            "nvim-telescope/telescope-live-grep-args.nvim",
        },
        config = function()
            local telescope = require('telescope')

            telescope.setup({
                pickers = {
                    find_files = {
                        theme = "dropdown",
                    }
                }
            })

            telescope.load_extension("live_grep_args")
        end
    },
    {
        'folke/trouble.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' };
        config = function()
            require("trouble").setup({
                position = "right",
                auto_open = true,
                auto_close = true
            })
        end
    },
    'j-hui/fidget.nvim',
    {
        'phaazon/hop.nvim',
        config = function()
            require('hop').setup();
        end
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },
    'Pocco81/true-zen.nvim',
    {
        'cappyzawa/trim.nvim',
        config = function()
            require('trim').setup({
                trim_last_line = false,
                patterns = {
                    [[%s/\(\n\n\)\n\+/\1/]], -- replace multiple blank lines with a single line
                },
            })
        end
    }
};
