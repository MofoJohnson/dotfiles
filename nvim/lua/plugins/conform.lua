local M = {
	"stevearc/conform.nvim",

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
		},
		format_on_save = {
			async = false,
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},

	config = true,
}

return M
