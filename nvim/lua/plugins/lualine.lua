local M = {
	"nvim-lualine/lualine.nvim",

	opts = {
		theme = "gruvbox",
		sections = {
			lualine_x = {
				"os.date('%H:%M', os.time())",
				"fileformat",
				"filetype",
			},
		},
	},
}

return M
