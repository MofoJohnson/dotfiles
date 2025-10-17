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
			"jsx",
			"lua",
			"markdown",
			"python",
			"rust",
			"typescript",
			"tsx",
			"yaml",
		})
	end,
}

return M
