return {
    'kdheepak/lazygit.nvim',
    'f-person/git-blame.nvim',
    {
        'akinsho/git-conflict.nvim',
        tag = "v1.0.0",
        config = function()
            require('git-conflict').setup()
        end
    },
    {
        'sindrets/diffview.nvim',
        dependencies = 'nvim-lua/plenary.nvim'
    }
};
