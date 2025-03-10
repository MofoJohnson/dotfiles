local M = {
    "nvim-lualine/lualine.nvim",
    lazy = false,

    opts = {
        theme = "onedark",
        sections = {
            lualine_x = {
                "os.date('%H:%M', os.time())",
                "fileformat",
                "filetype"
            }
        }
    },

    config = function(_, opts)
        local lualine = require("lualine")
        lualine.setup(opts)
    end
}

return M

