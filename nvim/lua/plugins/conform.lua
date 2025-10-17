local M = {
	"stevearc/conform.nvim",

	opts = {
		formatters_by_ft = {
			css = { "prettierd" },
			html = { "prettierd" },
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			json = { "prettierd" },
			lua = { "stylua" },
			markdown = { "prettierd" },
			python = { "isort", "black" },
			scss = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
		},
		format_on_save = {
			async = false,
			timeout_ms = 5000,
			lsp_format = "fallback",
		},
	},

	config = true,
}

return M
