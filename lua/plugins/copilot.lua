return {
  {
    "zbirenbaum/copilot.lua",
    enabled = true,
    autostart = true,
    cmd = "Copilot",
    event = "InsertEnter",
    -- config = function() require("copilot").setup {} end,
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>",
          next = "<C-j>",
          prev = "<C-k>",
        },
      },
    },
    -- opts = {
    --   suggestion = { enabled = true },
    --   panel = { enabled = false },
    -- },
  },
  -- {
  --   "nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-emoji",
  --     {
  --       "zbirenbaum/copilot-cmp",
  --       opts = {},
  --     },
  --   },
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     local cmp = require "cmp"
  --     opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "copilot" }, { name = "emoji" } }))
  --   end,
  -- },
}
