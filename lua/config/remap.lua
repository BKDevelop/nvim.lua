vim.g.mapleader = " "

-- Keep cursor-positiion when combining lines
vim.keymap.set("n", "J", "mzJ`z")
    -- better scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("n", "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- break up big function signatures
vim.keymap.set("n", "gob", [[s/\((\zs\\|,\ *\zs\\|)\)/\r&/g<CR><Bar>:'[,']normal ==<CR>]])

    -- Move current line / block with Alt-j/k ala vscode.
vim.keymap.set("i", "<A-j>", "<Esc>:m .+2<CR>==gi")
    -- Move current line / block with Alt-j/k ala vscode.
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
    -- navigation
vim.keymap.set("i", "<A-Up>", "<C-\\><C-N><C-w>k")
vim.keymap.set("i", "<A-Down>", "<C-\\><C-N><C-w>j")
vim.keymap.set("i", "<A-Left>", "<C-\\><C-N><C-w>h")
vim.keymap.set("i", "<A-Right>", "<C-\\><C-N><C-w>l")

    -- Better window movement
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

    -- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

    -- Move current line / block with Alt-j/k a la vscode.
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")

    -- QuickFix
vim.keymap.set("n", "]q", ":cnext<CR>")
vim.keymap.set("n", "[q", ":cprev<CR>")
vim.keymap.set("n", "<C-q>", ":call QuickFixToggle()<CR>")

vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprev<CR>")

-- Better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move highlighted text
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

    -- Move current line / block with Alt-j/k ala vscode.
vim.keymap.set("x", "<A-j>", ":m '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-k>", ":m '<-2<CR>gv-gv")
