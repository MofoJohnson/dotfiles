local M = {
    { "nvim-tree/nvim-web-devicons", opts = { default = true } },

    {
        "windwp/nvim-ts-autotag",
        lazy = false,

        config = function (_, _)
            local autotag = require("nvim-ts-autotag")
            autotag.setup({
                opts = {
                    enable_close = true, -- Auto close tags
                    enable_rename = true, -- Auto rename pairs of tags
                    enable_close_on_slash = true, -- Auto close on trailing </
                },
            })
        end
    },

    {
        "brenoprata10/nvim-highlight-colors",
        lazy = false,

        config = function (_, _)
            local colors = require("nvim-highlight-colors")
            colors.setup()
        end
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        lazy = false,
        main = "ibl",
        opts = {},

        config = function (_, opts)
            local indent = require("ibl")
            indent.setup(opts)
        end
    },

    {
        "numToStr/Comment.nvim",
        lazy = false,

        config = function (_, _)
            local comment = require("Comment")
            comment.setup()
        end
    },

    {
        "akinsho/git-conflict.nvim",
        version = "*",
        lazy = false,
        config = true
    }
}

return M

