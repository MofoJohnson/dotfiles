local M = {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",

	config = function(_, _)
		require("nvim-treesitter").install({
			"c",
			"cpp",
			"css",
			"go",
			"html",
			"java",
			"javascript",
			"json",
			"jsx",
			"lua",
			"markdown",
			"python",
			"rust",
			"scss",
			"typescript",
			"tsx",
			"yaml",
		})
	end,
}

return M
