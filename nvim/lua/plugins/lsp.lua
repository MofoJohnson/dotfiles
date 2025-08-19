local M = {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.config("*", {})
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        -- remove annoying undefined global vim warning
                        globals = { "vim", },
                    },
                },
            },
        })

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
