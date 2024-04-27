
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
    java = {
      require("formatter.filetypes.java").jdtls
    },
    python = {
      require("formatter.filetypes.python").pyright
    },
    ["*"] = {
      -- Not sure if this even works?
      require("formatter.filetypes.any").prettierd
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWrite"
})

return M

