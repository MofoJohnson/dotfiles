local M = {
	"zbirenbaum/copilot.lua",
	lazy = false,
	cmd = "Copilot",
	opts = {
		suggestion = { enabled = false },
		panel = { enabled = false },
		filetypes = {
			markdown = true,
			help = true,
		},
		should_attach = function(_, bufname)
			-- does not attach for .env files
			if string.match(bufname, "env") then
				return false
			end
			return true
		end,
	},
}

return M
