return {
    {
        'nvim-telescope/telescope.nvim',

        config = function ()
            require("telescope").setup {
              defaults = {
                wrap_results = true,
              },
            }
        end,
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
