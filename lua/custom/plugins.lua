local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "js-debug-adapter",
        "lua-language-server",
        "prettier",
        "typescript-language-server",
      }
    }
  },
  {
    'Wansmer/treesj',
    keys = {
      '<space>m',
      '<space>j',
      '<space>s',
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('treesj').setup({})
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", 
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({})
    end
  },
  {
    "folke/trouble.nvim",
    dependencies = { 
      "nvim-tree/nvim-web-devicons"
    },
  },
  {
    "ggandor/leap.nvim",
    event = "VeryLazy",
    config = function()
      return require "custom.configs.leap"
    end
  },
  {
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
    dependencies =  {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("telescope").load_extension("lazygit")
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = {
        lsp_doc_border = true
      }
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    enabled = true,
    autostart = true,
    cmd = "Copilot",
    event = "InsertEnter",
    build = ":Copilot auth",
    config = function()
      return require "custom.configs.copilot"
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        numhl = true,
      })
    end,
  },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   dependencies = "copilot.lua",
  --   opts = {},
  --   config = function(_, opts)
  --     local copilot_cmp = require("copilot_cmp")
  --     copilot_cmp.setup(opts)
  --     -- attach cmp source whenever copilot attaches
  --     -- fixes lazy-loading issues with the copilot cmp source
  --     require("lazyvim.util").lsp.on_attach(function(client)
  --     if client.name == "copilot" then
  --       copilot_cmp._on_insert_enter({})
  --     end
  --     end)
  --   end,
  -- },
  -- {
  --   "mhartington/formatter.nvim",
  --   event = "VeryLazy",
  --   opts = function()
  --     return require "custom.configs.formatter"
  --   end
  -- },
  -- {
  --   "mfussenegger/nvim-lint",
  --   event = "VeryLazy",
  --   config = function()
  --     require "custom.configs.lint"
  --   end
  -- },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.dapui"
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.dap"
      require("core.utils").load_mappings("dap")
    end
  },
}
return plugins
