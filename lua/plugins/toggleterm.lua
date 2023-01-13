return {
    "akinsho/toggleterm.nvim",
    tag = '2.3.0',
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-\>]]
        })
    end
};
