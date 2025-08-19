local M = {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.config("*", {})

        vim.diagnostic.config({
            virtual_lines = {
                current_line = true,
            },
        })
        vim.lsp.enable({
            "lua_ls",
        })
    end,
}

return M
