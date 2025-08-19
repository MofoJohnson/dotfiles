local M = {
    "echasnovski/mini.nvim", version = "*",

    config = function(_, _)
        require("mini.pairs").setup()
    end
}

return M
