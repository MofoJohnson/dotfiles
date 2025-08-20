local M = {
	"echasnovski/mini.nvim",
	version = "*",

	config = function(_, _)
		require("mini.pairs").setup()
		require("mini.surround").setup()
	end,
}

return M
