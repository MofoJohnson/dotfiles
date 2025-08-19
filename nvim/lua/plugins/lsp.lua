local M = {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.config("*", {})
        vim.lsp.enable({
            "lua_ls",
        })
    end,
}

return M
