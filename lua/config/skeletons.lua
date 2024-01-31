-- Makefile
vim.api.nvim_create_autocmd('BufNewFile', {
    pattern = "Makefile",
    command = '0r ~/.config/nvim/skeletons/Makefile'
})
