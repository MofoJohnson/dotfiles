local M = {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    opts = {
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },

        indent = { enable = true },
        ensure_installed = {
            "astro",
            "c",
            "cpp",
            "cmake",
            "css",
            "dockerfile",
            "go",
            "html",
            "java",
            "javascript",
            "json",
            "lua",
            "python",
            "rust",
            "typescript",
            "tsx",
            "xml",
        },
        sync_install = true,
    },

    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)

        -- add filetype associations for .qrc and .qss
        vim.filetype.add({
            extension = {
                qrc = "xml",
                qss = "css",
            },
        })
    end
}

return M

