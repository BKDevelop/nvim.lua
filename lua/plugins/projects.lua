return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/krypto/*",
      "~/pionira/*",
      "~/personal/*",
      "~/.config/*",
      "/mnt/c/Users/benjamin.koehler/krypto/*"
    },
    picker = {
      type = "telescope", -- or "fzf-lua"
      preview = true, -- show directory structure preview in Telescope
    }
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    -- optional picker
    { "nvim-telescope/telescope.nvim"},
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
}
