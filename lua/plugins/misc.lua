-- small plugins that don't need special configs
return {
    -- { "mattn/emmet-vim" },
    { "tpope/vim-surround" },
    {
        "mbbill/undotree",
        config = function()
            vim.g['undotree_WindowLayout'] = '2'
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        config = true,
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    { "numToStr/Comment.nvim",               config = true },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }, -- Add indentation guides even on blank lines
    { "tpope/vim-sleuth" },                                             -- Detect tabstop and shiftwidth automatically
    { "windwp/nvim-autopairs",              config = true },
    {
        "hedyhli/outline.nvim",
        lazy = true,
        cmd = { "Outline", "OutlineOpen" },
        opts = {},
    },
    { "dhruvasagar/vim-table-mode" },
    { "tpope/vim-abolish" }, -- Substitute on steroids
}
