-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", ";", ":")

-- curor movements in insert mode
keymap("i", "<C-h>", "<Left>")
keymap("i", "<C-j>", "<Down>")
keymap("i", "<C-k>", "<Up>")
keymap("i", "<C-l>", "<Right>")

-- buffers
keymap("n", "<leader>d", ":bd<cr>", { silent = true })
-- change buffer
keymap("n", "<leader>k", ":bn<cr>", { silent = true })
keymap("n", "<leader>j", ":bp<cr>", { silent = true })

-- allows you to move selected lines of code up and down lines
keymap("v", "J", ":m '>+1<cr>gv=gv")
keymap("v", "K", ":m '<-2<cr>gv=gv")

-- does the chmod comand for your shell file
keymap("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })

-- allows you to change all occurences of the current word you are on
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- view full diagnostic
keymap("n", "<leader>gb", "<cmd>lua vim.diagnostic.open_float()<cr>")

-- open neogit
keymap("n", "<leader>go", "<cmd>Neogit<cr>")

-- open lazy
keymap("n", "<leader>l", "<cmd>Lazy<cr>")

