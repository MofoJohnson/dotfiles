local M = {
	"saghen/blink.cmp",
	version = "1.*",

	opts = {
		completion = {
			documentation = {
				auto_show = true,
			},
			list = {
				selection = {
					preselect = false,
					auto_insert = false,
				},
			},
			ghost_text = {
				enabled = true,
				show_with_menu = true,
			},
		},
		keymap = {
			preset = "none",

			["<CR>"] = { "accept", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },
		},
		snippets = {
			preset = "luasnip",
		},
	},
	opts_extend = { "sources.default" },
}

return M
