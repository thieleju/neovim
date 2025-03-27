require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Lazygit
map("n", "<leader>gg", "<cmd> LazyGit <CR>", { desc = "Open Lazygit" })

-- split buffer
map("n", "<leader>wv", "<cmd> :vsplit <CR>", { desc = "Vertical Split" })
map("n", "<leader>wh", "<cmd> :hsplit <CR>", { desc = "Horizontal Split" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
