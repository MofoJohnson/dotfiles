local M = {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },

	config = function(_, _)
		local render_markdown = require("render-markdown")
		render_markdown.setup({
			completions = {
				blink = {
					enabled = true,
				},
			},
			latex = {
				enabled = false,
			},
			yaml = {
				enabled = false,
			},
			restart_highlighter = true,
		})
	end,
}

return M
