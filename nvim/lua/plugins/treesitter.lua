local M = {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",

	config = function(_, _)
		require("nvim-treesitter").install({
			"css",
			"html",
			"java",
			"javasvcript",
			"json",
			"lua",
			"markdown",
			"python",
			"rust",
			"typescript",
			"yaml",
		})
	end,
}

return M
