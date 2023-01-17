local wk = require('which-key');
local map = vim.api.nvim_set_keymap;

wk.register({
    ["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment" },
    z = {
        name = "zen",
        n = { ":'<,'>TZNarrow<cr>", "narrow" },
    }
}, { prefix = "<leader>", mode = "v" })

wk.register({
    ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment" },
    e = { "<cmd>NvimTreeToggle<cr>", "explorer" },
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "find files" },
        g = { "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", "find files with grep" },
    },
    g = {
        name = "git",
        l = { "<cmd>LazyGit<cr>", "lazy git" },
        d = {
            name = "DiffView",
            o = { "<cmd>DiffviewOpen<cr>", "open" },
            c = { "<cmd>DiffviewClose<cr>", "close" },
        },
    },
    h = { "<cmd>HopWord<cr>", "HopWord" },
    l = {
        name = "LSP",
        f = { vim.lsp.buf.format, "Format" },
        a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
        d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
        w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
        F = { "<cmd>Lspsaga lsp_finder<cr>", "finder" },
        h = { "<cmd>Lspsaga hover_doc<cr>", "documentation" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        I = { "<cmd>Mason<cr>", "Mason Info" },
        j = {
            vim.diagnostic.goto_next,
            "Next Diagnostic",
        },
        k = {
            vim.diagnostic.goto_prev,
            "Prev Diagnostic",
        },
        l = { vim.lsp.codelens.run, "CodeLens Action" },
        p = { "<cmd>Lspsaga peek_definition<cr>", "peek definition" },
        q = { vim.diagnostic.setloclist, "Quickfix" },
        r = { vim.lsp.buf.rename, "Rename" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
        S = {
            "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
            "Workspace Symbols",
        },
    },
    m = {
        name = "Mind",
        o = { "<cmd>MindOpenSmartProject<cr>", "open" },
        c = { "<cmd>MindClose<cr>", "close" },
        r = { "<cmd>MindReloadState<cr>", "reload" }
    },
    x = {
        name = "trouble",
        x = { "<cmd>TroubleToggle<cr>", "toggle" },
        q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
        r = { "<cmd>TroubleToggle lsp_references<cr>", "lsp reference" }
    },
    z = {
        name = "zen",
        n = { "<cmd>TZNarrow<cr>", "narrow" },
        f = { "<cmd>TZFocus<cr>", "focus" },
        m = { "<cmd>TZMinimalist<cr>", "minimalist" },
        a = { "<cmd>TZAtaraxis<cr>", "ataraxis" },
    }
}, { prefix = "<leader>", mode = "n" })

-- Tabs (Barbar)

local opts = { noremap = true, silent = true }

map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
