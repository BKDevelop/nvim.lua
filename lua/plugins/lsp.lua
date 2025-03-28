return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x',
    lazy = true,
    config = false,
  },
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = true,
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        sources = {
          {name = 'nvim_lsp'},
        },
        completion = { completeopt = 'menu,menuone,noinsert'},
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
        }),
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
      })
    end
  },
  {
    'aznhe21/actions-preview.nvim'
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    cmd = {'LspInfo', 'LspInstall', 'LspStart'},
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
    },
    config = function()
      local lsp_zero = require('lsp-zero')

      -- lsp_attach is where you enable features that only work
      -- if there is a language server active in the file
      local lsp_attach = function(client, bufnr)
        local opts = {buffer = bufnr}

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
      end

      lsp_zero.extend_lspconfig({
        sign_text = true,
        lsp_attach = lsp_attach,
        capabilities = require('cmp_nvim_lsp').default_capabilities()
      })

      require('mason-lspconfig').setup({
        ensure_installed = {},
        handlers = {
          -- this first function is the "default handler"
          -- it applies to every language server without a "custom handler"
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
          -- this is the "custom handler" for `jdtls`
          -- noop is an empty function that doesn't do anything
          jdtls = lsp_zero.noop,
          ["volar"] = function()
          require("lspconfig").volar.setup({
            -- NOTE: Uncomment to enable volar in file types other than vue.
            -- (Similar to Takeover Mode)

            -- filetypes = { "vue", "javascript", "typescript", "javascriptreact", "typescriptreact", "json" },

            -- NOTE: Uncomment to restrict Volar to only Vue/Nuxt projects. This will enable Volar to work alongside other language servers (tsserver).

            -- root_dir = require("lspconfig").util.root_pattern(
            --   "vue.config.js",
            --   "vue.config.ts",
            --   "nuxt.config.js",
            --   "nuxt.config.ts"
            -- ),
            init_options = {
              vue = {
                hybridMode = false,
              },
              -- NOTE: This might not be needed. Uncomment if you encounter issues.

              -- typescript = {
              --   tsdk = vim.fn.getcwd() .. "/node_modules/typescript/lib",
              -- },
            },
          })
        end,

        ["ts_ls"] = function()
          local mason_packages = vim.fn.stdpath("data") .. "/mason/packages"
          local volar_path = mason_packages .. "/vue-language-server/node_modules/@vue/language-server"

          require("lspconfig").ts_ls.setup({
            -- NOTE: To enable hybridMode, change HybrideMode to true above and uncomment the following filetypes block.

            -- filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
            init_options = {
              plugins = {
                {
                  name = "@vue/typescript-plugin",
                  location = volar_path,
                  languages = { "vue" },
                },
              },
            },
          })
        end,
        }
      })
    end
  }
}
