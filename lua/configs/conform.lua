local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "eslint_d", "prettierd" },
		html = { "eslint_d", "prettierd" },
		python = { "black" },
		javascript = { "eslint_d", "prettierd" },
		typescript = { "eslint_d", "prettierd" },
		json = { "prettierd" },
		markdown = { "prettierd" },
		yaml = { "prettierd" },
		go = { "gofmt" },
		rust = { "rustfmt" },
		sh = { "shfmt" },
		sql = { "sqlformat" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options
