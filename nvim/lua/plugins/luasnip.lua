local M = {
	"L3MON4D3/LuaSnip",
	dependencies = {
		{ "rafamadriz/friendly-snippets" },
	},
	opts = {
		history = true,
		delete_check_events = "TextChanged",
	},

	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}

return M
