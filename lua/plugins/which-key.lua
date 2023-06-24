return {
    {
        "folke/which-key.nvim",
        config = function()
            local wk = require("which-key")
            wk.register({
                ["w"] = { "<cmd>w!<CR>", "Save" },
                ["q"] = { "<cmd>q<CR>", "Quit" },
                ["e"] = { "<cmd>Ex<CR>", "Explore" },
                ["u"] = { "<cmd>UndotreeToggle<CR>", "Undo Tree" },
                ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
                ["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
                ["o"] = { "<cmd>SymbolsOutline<CR>", "No Highlight" },
                d = {
                    name = "Debug",
                    t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
                    b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
                    c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
                    C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
                    d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
                    g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
                    i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
                    o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
                    u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
                    p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
                    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
                    s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
                    q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
                    U = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
                },
                -- " Available Debug Adapters:
                -- "   https://microsoft.github.io/debug-adapter-protocol/implementors/adapters/
                -- " Adapter configuration and installation instructions:
                -- "   https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
                -- " Debug Adapter protocol:
                -- "   https://microsoft.github.io/debug-adapter-protocol/
                -- " Debugging
                g = {
                    name = "Git",
                    j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
                    k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
                    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
                    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
                    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
                    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
                    s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
                    u = {
                        "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
                        "Undo Stage Hunk",
                    },
                    o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
                    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
                    c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
                    C = {
                        "<cmd>Telescope git_bcommits<cr>",
                        "Checkout commit(for current file)",
                    },
                    d = {
                        name = "Git Diff",
                        d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Git Diff" },
                        c = { "<cmd>Gvdiffsplit!<cr>", "3-way" },
                        h = { "<cmd>diffget //2<CR>", "From left" },
                        l = { "<cmd>diffget //3<CR>", "From right" },
                    },
                },
                l = {
                    name = "LSP",
                    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
                    d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
                    w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
                    f = { vim.lsp.buf.format, "Format" },
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
                    q = { vim.diagnostic.setloclist, "Quickfix" },
                    r = { vim.lsp.buf.rename, "Rename" },
                    s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
                    S = {
                        "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
                        "Workspace Symbols",
                    },
                    e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
                },
                s = {
                    name = "Search",
                    c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
                    f = { "<cmd>Telescope find_files<cr>", "Find File" },
                    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
                    H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
                    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
                    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
                    R = { "<cmd>Telescope registers<cr>", "Registers" },
                    t = { "<cmd>Telescope live_grep<cr>", "Text" },
                    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
                    C = { "<cmd>Telescope commands<cr>", "Commands" },
                    p = {
                        "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
                        "Colorscheme with Preview",
                    },
                },
                T = {
                    name = "Treesitter",
                    i = { ":TSConfigInfo<cr>", "Info" },
                },
                f = {
                    name = "Find",
                    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
                    f = { "<cmd>Telescope git_files<cr>", "Files" },
                    F = { "<cmd>Telescope find_files<cr>", "All files" },
                    w = { "<cmd>Telescope live_grep<cr>", "Words" },
                },
            },
                {

                    prefix = "<leader>"
                })

            wk.register({
                ["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" },
            },
                {
                    mode = "v",
                    prefix = "<leader>"
                })


        end,
    },
}
