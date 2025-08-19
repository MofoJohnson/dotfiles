-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap.set

keymap("n", ";", ":")

-- curor movements in insert mode
keymap("i", "<C-h>", "<Left>")
keymap("i", "<C-j>", "<Down>")
keymap("i", "<C-k>", "<Up>")
keymap("i", "<C-l>", "<Right>")

-- keep selection when indenting
keymap("v", ">", ">gv", { noremap = true, silent = true })
keymap("v", "<", "<gv", { noremap = true, silent = true })

-- buffers
keymap("n", "<leader>d", ":bd<cr>", { silent = true })
-- change buffer
keymap("n", "<leader>k", ":bn<cr>", { silent = true })
keymap("n", "<leader>j", ":bp<cr>", { silent = true })

-- allows you to move selected lines of code up and down lines
keymap("v", "J", ":m '>+1<cr>gv=gv")
keymap("v", "K", ":m '<-2<cr>gv=gv")

-- does the chmod command for your shell file
keymap("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })

-- allows you to change all occurences of the current word you are on
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- open lazy
keymap("n", "<leader>l", "<cmd>Lazy<cr>")
