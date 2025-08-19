local M = {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",

    config = function(_, opts)
        require("nvim-treesitter").install({
            "css",
            "html",
            "lua",
            "python",
            "rust",
        })
    end
}

return M
