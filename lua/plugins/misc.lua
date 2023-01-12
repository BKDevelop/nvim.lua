-- small plugins that don't need special configs
return {
    { "vimwiki/vimwiki" },
    { "mattn/emmet-vim" },
    { "tpope/vim-surround" },
    {
        "mbbill/undotree",
        config = function()
            vim.g['undotree_WindowLayout'] = '2'
        end
    },
    { "nvim-lualine/lualine.nvim", config = true },
    { "numToStr/Comment.nvim", config = true },
    { "lukas-reineke/indent-blankline.nvim", config = true }, -- Add indentation guides even on blank lines
    { "tpope/vim-sleuth" },                    -- Detect tabstop and shiftwidth automatically
}
