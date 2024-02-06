  local copilot = require("copilot")

  copilot.setup({
    panel = {
      enabled = true,
      auto_refresh = true,
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-h>",
        next = "<C-j>",
        prev = "<C-k>",
      }
    },
    filetypes = {
      ["*"] = true,
      ["."] = true
    }
  })


