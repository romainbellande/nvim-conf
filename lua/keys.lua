local wk = require('which-key');
local map = vim.api.nvim_set_keymap;

wk.register({
    ["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment" },
}, { prefix = "<leader>", mode = "v" })

wk.register({
    ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment" },
    e = { "<cmd>NvimTreeToggle<cr>", "explorer" },
    x = {
        name = "trouble",
        x = { "<cmd>TroubleToggle<cr>", "toggle" },
        q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
        r = { "<cmd>TroubleToggle lsp_references<cr>", "lsp reference" }
    },
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "find files" },
        g = { "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", "find files with grep" },
    },
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
    g = {
        name = "git",
        l = { "<cmd>LazyGit<cr>", "lazy git" }
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
