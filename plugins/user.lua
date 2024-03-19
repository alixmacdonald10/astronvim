return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    -- specify when the plug in should be loaded
    event = "User Astrofile",
    -- specify what commands could also be ran to load the plugin
    cmd = { "TodoQuickFix" },
    -- create mappings for the plugin
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope"},
    },
  },
  {
    'arjunmahishi/k8s.nvim'
  },
}

