local M = {
	"stevearc/conform.nvim",

	opts = {
		formatters = {
			clang_format = {
				args = { "--style={BasedOnStyle: Google, IndentWidth: 4}" },
			},
		},
		formatters_by_ft = {
			c = { "clang_format" },
			cpp = { "clang_format" },
			css = { "prettier" },
			html = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			json = { "prettier" },
			lua = { "stylua" },
			markdown = { "prettierd" },
			python = { "isort", "black" },
			scss = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
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
