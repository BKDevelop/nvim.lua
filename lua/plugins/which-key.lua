return {
    {
        "folke/which-key.nvim",
        config = function()
            local wk = require("which-key")
            wk.add(
            {
                { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Comment toggle current line" },
                { "<leader>/", "<Plug>(comment_toggle_linewise_visual)", desc = "Comment toggle linewise (visual)", mode = "v" },
                { "<leader>T", group = "Treesitter" },
                { "<leader>Ti", ":TSConfigInfo<cr>", desc = "Info" },
                { "<leader>d", group = "Debug" },
                { "<leader>dC", "<cmd>lua require'dap'.run_to_cursor()<cr>", desc = "Run To Cursor" },
                { "<leader>dU", "<cmd>lua require'dapui'.toggle()<cr>", desc = "Toggle UI" },
                { "<leader>db", "<cmd>lua require'dap'.step_back()<cr>", desc = "Step Back" },
                { "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", desc = "Continue" },
                { "<leader>dd", "<cmd>lua require'dap'.disconnect()<cr>", desc = "Disconnect" },
                { "<leader>dg", "<cmd>lua require'dap'.session()<cr>", desc = "Get Session" },
                { "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", desc = "Step Into" },
                { "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", desc = "Step Over" },
                { "<leader>dp", "<cmd>lua require'dap'.pause()<cr>", desc = "Pause" },
                { "<leader>dq", "<cmd>lua require'dap'.close()<cr>", desc = "Quit" },
                { "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", desc = "Toggle Repl" },
                { "<leader>ds", "<cmd>lua require'dap'.continue()<cr>", desc = "Start" },
                { "<leader>dt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Toggle Breakpoint" },
                { "<leader>du", "<cmd>lua require'dap'.step_out()<cr>", desc = "Step Out" },
                { "<leader>e", "<cmd>Neotree filesystem reveal right toggle<CR>", desc = "Explore" },
                { "<leader>f", group = "Find" },
                { "<leader>fF", "<cmd>Telescope find_files<cr>", desc = "All files" },
                { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
                { "<leader>ff", "<cmd>Telescope git_files<cr>", desc = "Files" },
                { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Words" },
                { "<leader>g", group = "Git" },
                { "<leader>gC", "<cmd>Telescope git_bcommits<cr>", desc = "Checkout commit(for current file)" },
                { "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", desc = "Reset Buffer" },
                { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
                { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Checkout commit" },
                { "<leader>gd", group = "Git Diff" },
                { "<leader>gdc", "<cmd>Gvdiffsplit!<cr>", desc = "3-way" },
                { "<leader>gdd", "<cmd>Gitsigns diffthis HEAD<cr>", desc = "Git Diff" },
                { "<leader>gdh", "<cmd>diffget //2<CR>", desc = "From left" },
                { "<leader>gdl", "<cmd>diffget //3<CR>", desc = "From right" },
                { "<leader>gg", "<cmd>Neogit<CR>", desc = "Neogit" },
                { "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", desc = "Next Hunk" },
                { "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", desc = "Prev Hunk" },
                { "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", desc = "Blame" },
                { "<leader>go", "<cmd>Telescope git_status<cr>", desc = "Open changed file" },
                { "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", desc = "Preview Hunk" },
                { "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", desc = "Reset Hunk" },
                { "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", desc = "Stage Hunk" },
                { "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc = "Undo Stage Hunk" },
                { "<leader>h", "<cmd>nohlsearch<CR>", desc = "No Highlight" },
                { "<leader>l", group = "LSP" },
                { "<leader>lI", "<cmd>Mason<cr>", desc = "Mason Info" },
                { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
                -- { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
                { "<leader>la", "<cmd>lua require('actions-preview').code_actions()<cr>", desc = "Code Action" },
                { "<leader>ld", "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", desc = "Buffer Diagnostics" },
                { "<leader>le", "<cmd>Telescope quickfix<cr>", desc = "Telescope Quickfix" },
                { "<leader>lf", vim.lsp.buf.format, desc = "Format" },
                { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
                { "<leader>lj", vim.diagnostic.goto_next, desc = "Next Diagnostic" },
                { "<leader>lk", vim.diagnostic.goto_prev, desc = "Prev Diagnostic" },
                { "<leader>ll", vim.lsp.codelens.run, desc = "CodeLens Action" },
                { "<leader>lq", vim.diagnostic.setloclist, desc = "Quickfix" },
                { "<leader>lr", vim.lsp.buf.rename, desc = "Rename" },
                { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
                { "<leader>lw", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
                { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle Outline" },
                { "<leader>s", group = "Search" },
                { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
                { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Find highlight groups" },
                { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
                { "<leader>sR", "<cmd>Telescope registers<cr>", desc = "Registers" },
                { "<leader>sc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
                { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Find File" },
                { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
                { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
                { "<leader>sp", "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>", desc = "Colorscheme with Preview" },
                { "<leader>sr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
                { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Text" },
                { "<leader>so", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
                { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Undo Tree" },
            },
            {

                prefix = "<leader>"
            })
        end,
    },
}
