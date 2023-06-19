return {
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp',
            config = function ()
            --  override default cmp mapping
            local cmp = require('cmp')

            cmp.setup({
                mapping = {
                    ['<TAB>'] = cmp.mapping.confirm({ select = true }),
                }
            })
            end
            },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            -- Snippet Collection (Optional)
            { 'rafamadriz/friendly-snippets' },
        },
        config = function()
            -- Learn the keybindings, see :help lsp-zero-keybindings
            -- Learn to configure LSP servers, see :help lsp-zero-api-showcase
            local lsp = require('lsp-zero')
            lsp.preset('recommended')

            lsp.setup()
        end,
    }
}
