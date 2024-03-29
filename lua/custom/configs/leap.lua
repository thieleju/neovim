local leap = require("leap")

-- override conflicts
leap.set_default_keymaps(true)


leap.setup({
  case_sensitive = false,
  safe_labels = "", -- disable auto-jumping to the first match
  max_phase_one_targets = 0, -- first char won't show possible matches
  max_highlighted_traversal_targets = 10,
})

-- Bidirectional search
local function leap_current_window()
  leap.leap({ target_windows = { vim.fn.win_getid() } })
end
vim.keymap.set("n", "s", leap_current_window, { silent = true })
vim.keymap.set("x", "s", leap_current_window, { silent = true })

-- mark cursor location before jumping
vim.api.nvim_create_autocmd("User", {
  pattern = "LeapEnter",
  callback = function()
    vim.cmd("normal m'")
  end,
})

-- center cursor after jumping
vim.api.nvim_create_autocmd("User", {
  pattern = "LeapLeave",
  callback = function()
    vim.cmd("normal zz")
  end,
})
