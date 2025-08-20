local M = {
	"saghen/blink.cmp",
	dependencies = {
		{ "disrupted/blink-cmp-conventional-commits" },
	},
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
		sources = {
			default = {
				"conventional_commits",
			},
			providers = {
				conventional_commits = {
					name = "Conventional Commits",
					module = "blink-cmp-conventional-commits",
					enabled = function()
						return vim.bo.filetype == "gitcommit"
					end,
					opts = {},
				},
			},
		},
	},
	opts_extend = { "sources.default" },
}

return M
