
local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettierd
    },
    typescript = {
      require("formatter.filetypes.typescript").prettierd
    },
    sh = {
      require("formatter.filetypes.sh").shfmt
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWrite"
})

return M

