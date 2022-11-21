local wk = require('which-key')

wk.register({
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "find files" },
        g = { "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", "find files with grep"},
    },
    g = {
        name = "git",
        d = {
            name = "DiffView",
            o = { "<cmd>DiffviewOpen<cr>", "open" },
            c = { "<cmd>DiffviewClose<cr>", "close" }
        }
    },
    h = { "<cmd>HopWord<cr>", "HopWord" },
    t = {
        name = "toggle",
        c = {
            name = "comment",
            b = { "<cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<cr>", "block" }
        },
        t = { "<cmd>NvimTreeToggle<cr>", "toggle sidebar tree" },
        ["1"] = { "<cmd>lua _zsh_simple_toggle()<cr>", "simple terminal" },
        ["2"] = { "<cmd>lua _zsh_float_toggle()<cr>", "simple floating terminal" },
        ["3"] = { "<cmd>lua _lazygit_toggle()<cr>", "lazy git" },
    },
    x = {
        name = "trouble",
        x = { "<cmd>TroubleToggle<cr>", "toggle" },
        q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
        r = { "<cmd>TroubleToggle lsp_references<cr>", "lsp reference" }
    }
}, { prefix = "<leader>", mode = "n" })

