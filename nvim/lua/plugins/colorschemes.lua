local M = {
    -- gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,

        config = function(_, opts)
            local gruvbox = require("gruvbox")
            gruvbox.setup(opts)

            vim.o.background = "dark"
            vim.cmd("colorscheme gruvbox")
        end
    }
}

return M
