local M = {
    "numToStr/Comment.nvim",
    dependencies = {
        { "JoosepAlviste/nvim-ts-context-commentstring" },
    },

    config = function(_, opts)
        local ts_context_commentstring = require("ts_context_commentstring")
        local comment = require("Comment")

        ts_context_commentstring.setup({
            enable_autocmd = false,
        })
        comment.setup({
            pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
        })
    end
}

return M
