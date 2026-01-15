local M = {
	"neovim/nvim-lspconfig",

	config = function()
		vim.lsp.config("*", {})
		vim.lsp.config("basedpyright", {
			settings = {
				basedpyright = {
					analysis = {
						diagnosticMode = "workspace",
					},
				},
			},
		})
		vim.lsp.config("jdtls", {
			settings = {
				java = {
					project = {
						referencedLibraries = {
							vim.fn.getcwd() .. "/lib/**/*.jar",
						},
					},
					projectSourcePaths = {
						"src/main/java",
					},
				},
			},
		})
		vim.lsp.config("just-lsp", {
			cmd = { "just-lsp" },
			filetypes = { "just" },
			root_markers = { ".git" },
		})
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						-- remove annoying undefined global vim warning
						globals = { "vim" },
					},
				},
			},
		})
		vim.lsp.config("yamlls", {
			settings = {
				yaml = {
					schemas = {
						["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = ".gitlab-ci.yml",
					},
				},
			},
		})

		vim.diagnostic.config({
			priority = {
				[vim.diagnostic.severity.ERROR] = 3,
				[vim.diagnostic.severity.WARN] = 2,
				[vim.diagnostic.severity.INFO] = 1,
				[vim.diagnostic.severity.HINT] = 0,
			},
			severity_sort = true,
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.INFO] = "",
					[vim.diagnostic.severity.HINT] = "",
				},
			},
			virtual_lines = {
				current_line = true,
			},
		})
		vim.lsp.enable({
			"basedpyright",
			"biome",
			"clangd",
			"gopls",
			"jdtls",
			"just-lsp",
			"lua_ls",
			"vtsls",
			"yamlls",
		})
	end,
}

return M
