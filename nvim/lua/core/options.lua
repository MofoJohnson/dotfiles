-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- set tabs to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- cursorline is highlighted
vim.opt.cursorline = true

-- adds padding of 16 lines to bottom
vim.opt.scrolloff = 16

-- sets .pl files to have prolog syntax highlighting
vim.api.nvim_exec([[
    au BufRead,BufNewFile *.pl set filetype=prolog
]], false)
