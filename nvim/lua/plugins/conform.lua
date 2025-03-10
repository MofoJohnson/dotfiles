local M = {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },

    opts = {
        formatters_by_ft = {
            css = { "prettier" },
            html = { "prettier" },
            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            json = { "prettier" },
            typscript = { "prettier" },
            typscriptreact = { "prettier" },
            yaml = { "prettier" },
        },
        format_on_save = {
            async = false,
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },

    config = function(_, opts)
        local conform = require("conform")
        conform.setup(opts)
    end
}

return M
