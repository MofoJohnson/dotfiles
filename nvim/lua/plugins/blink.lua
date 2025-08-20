local M = {
	"saghen/blink.cmp",
	dependencies = {
		{ "disrupted/blink-cmp-conventional-commits" },
		{ "fang2hou/blink-copilot" },
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
				"copilot",
				"lsp",
				"buffer",
				"snippets",
				"path",
				"conventional_commits",
			},
			providers = {
				copilot = {
					name = "copilot",
					module = "blink-copilot",
					score_offset = 100,
					async = true,
				},
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
