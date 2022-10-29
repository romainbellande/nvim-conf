-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',  -- optional, for file icons
        },
    }

      -- [[ Theme ]]
    use 'mhinz/vim-startify'                -- start screen

    use {                                   -- status bar 
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons', opt = true
        }
    }
    use 'olimorris/onedarkpro.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "akinsho/toggleterm.nvim",
        tag = '2.3.0'
    }

    use 'Yggdroot/indentLine'

    use 'windwp/nvim-autopairs'

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "simrat39/rust-tools.nvim",
        "nvim-lua/lsp-status.nvim"
    }

        -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

    use 'nvim-treesitter/nvim-treesitter'

    use 'puremourning/vimspector' -- graphical debugger

    use {
        'folke/trouble.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    use 'numToStr/Comment.nvim' -- comment text

    use 'phaazon/hop.nvim' -- motions speed

    -- tabs manager
    
    use { 
        'romgrk/barbar.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    } 
end)

