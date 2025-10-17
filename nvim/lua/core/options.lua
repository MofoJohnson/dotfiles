-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- set tabs to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4

-- set tabs to 2 spaces for eslint recommended languages
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = {
		"typescript",
		"typescriptreact",
		"javascript",
		"javascriptreact",
		"json",
		"jsonc",
	},
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
		vim.opt_local.softtabstop = 2
	end,
})

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- cursorline is highlighted
vim.opt.cursorline = true

-- adds padding of 16 lines to bottom
vim.opt.scrolloff = 16

-- auto-session options
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
