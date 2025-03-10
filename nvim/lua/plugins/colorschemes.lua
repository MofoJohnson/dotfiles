local M = {
    -- material
    {
        "marko-cerovac/material.nvim",
        lazy = true,
        priority = 1000,

        opts = {
            plugins = {
                "telescope"
            },

            style = "deep ocean"
        },

        config = function(_, opts)
            local material = require("material")
            material.setup(opts)

            -- vim.cmd("colorscheme material")
        end
    },

    -- onedark
    {
        "navarasu/onedark.nvim",
        lazy = true,
        priority = 1000,

        opts = {
            style = "darker"
        },

        config = function(_, opts)
            local onedark = require("onedark")
            onedark.setup(opts)

            -- vim.cmd("colorscheme onedark")
        end
    },

    -- calvera dark
    {
        "hoprr/calvera-dark.nvim",
        lazy = true,
        priority = 1000,

        config = function(_, _)
            local calvera = require("calvera")
            calvera.set()

            -- vim.cmd("colorscheme calvera")
        end
    },

    -- kanagawa
    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        priority = 1000,

        opts = {
            theme = "lotus"
        },

        config = function(_, opts)
            local kanagawa = require("kanagawa")
            kanagawa.setup(opts)

            -- vim.cmd("colorscheme kanagawa")
        end
    },

    -- nordic
    {
        "AlexvZyl/nordic.nvim",
        lazy = true,
        priority = 1000,

        opts = {
            telescope = { style = "flat" }
        },

        config = function(_, opts)
            local nordic = require("nordic")
            nordic.setup(opts)

            -- vim.cmd("colorscheme nordic")
        end
    },

    -- tokyonight
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,

        opts = {
            style = "night",

            -- remove telescope border
            -- on_highlights = function(hl, c)
            --     local prompt = "#2d3149"
            --     hl.TelescopeNormal = {
            --         bg = c.bg_dark,
            --         fg = c.fg_dark,
            --     }
            --     hl.TelescopeBorder = {
            --         bg = c.bg_dark,
            --         fg = c.bg_dark,
            --     }
            --     hl.TelescopePromptNormal = {
            --         bg = prompt,
            --     }
            --     hl.TelescopePromptBorder = {
            --         bg = prompt,
            --         fg = prompt,
            --     }
            --     hl.TelescopePromptTitle = {
            --         bg = prompt,
            --         fg = prompt,
            --     }
            --     hl.TelescopePreviewTitle = {
            --         bg = c.bg_dark,
            --         fg = c.bg_dark,
            --     }
            --     hl.TelescopeResultsTitle = {
            --         bg = c.bg_dark,
            --         fg = c.bg_dark,
            --     }
            -- end
        },

        config = function(_, opts)
            local tokyonight = require("tokyonight")
            tokyonight.setup(opts)

            vim.cmd("colorscheme tokyonight")
        end
    }
}

return M

