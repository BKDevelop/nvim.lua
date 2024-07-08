return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
    },
    config = true
  },
  {
      "lewis6991/gitsigns.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = true
  }            -- Add git related info in the signs columns and popups
}
