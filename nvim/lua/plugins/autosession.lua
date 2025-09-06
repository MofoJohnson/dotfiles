local M = {
	"rmagatti/auto-session",
	lazy = false,

	opts = {
		auto_create = function()
			local cmd = "git rev-parse --is-inside-work-tree"
			return vim.fn.system(cmd) == "true\n"
		end,
	},
}

return M
