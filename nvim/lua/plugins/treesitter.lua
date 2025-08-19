local M = {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",

	config = function(_, _)
		require("nvim-treesitter").install({
			"css",
			"html",
			"lua",
			"markdown",
			"python",
			"rust",
		})
	end,
}

return M
