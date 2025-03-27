return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require("configs.conform"),
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"json",
				"yaml",
				"markdown",
				"bash",
			},
		},
	},

	{
		"zbirenbaum/copilot.lua",
		enabled = true,
		autostart = true,
		cmd = "Copilot",
		event = "InsertEnter",
		build = ":Copilot auth",
		config = function()
			require("copilot").setup({
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
					},
				},
				filetypes = {
					["*"] = true,
					["."] = true,
				},
			})
		end,
	},

	{
		"kdheepak/lazygit.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},

	{
		"rcarriga/nvim-notify",
		opts = {
			background_colour = "#000000",
			timeout = 3000,
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
			on_open = function(win)
				vim.api.nvim_win_set_config(win, { zindex = 100 })
			end,
		},
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},

	{
		"Wansmer/treesj",
		keys = {
			"<space>m",
			"<space>j",
			"<space>s",
		},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("treesj").setup({})
		end,
	},

	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},

	{
		"folke/trouble.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	{
		"ggandor/leap.nvim",
		event = "VeryLazy",
		config = function()
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
		end,
	},

	{
		"windwp/nvim-ts-autotag",
		ft = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact" },
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	{ "echasnovski/mini.nvim", version = false },
}
