
local M = {}

M.lsp = {
  n = {
    ["<leader>xx"] = {
      "<cmd> TroubleToggle <CR>",
      "Toggle trouble"
    },
    ["<leader>xw"] = {
      "<cmd> TroubleToggle lsp_workspace_diagnostics <CR>",
      "Toggle workspace diagnostics"
    },
    ["<leader>xd"] = {
      "<cmd> TroubleToggle lsp_document_diagnostics <CR>",
      "Toggle document diagnostics"
    },
    ["<leader>xq"] = {
      "<cmd> TroubleToggle quickfix <CR>",
      "Toggle quickfix"
    },
    ["<leader>xl"] = {
      "<cmd> TroubleToggle loclist <CR>",
      "Toggle loclist"
    },
    ["gR"] = {
      "<cmd> TroubleToggle lsp_references <CR>",
      "Toggle lsp references"
    },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    }
  },
}

M.misc = {
  i = {
    ["jk"] = {"<Esc>"},
  },
  n  =  {
    ["<leader>wv"] = {
      "<cmd> vsplit <CR>",
      "Split window vertically"
    },
    ["<leader>wh"] = {
      "<cmd> split <CR>",
      "Split window horizontally"
    },
  }
}

M.lazyGit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open lazygit" },
  },
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>","window left"},
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>","window right"},
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>","window down"},
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>","window up"},
  }
}

return M

