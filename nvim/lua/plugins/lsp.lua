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
            priority = {
                [vim.diagnostic.severity.ERROR] = 3,
                [vim.diagnostic.severity.WARN] = 2,
                [vim.diagnostic.severity.INFO] = 1,
                [vim.diagnostic.severity.HINT] = 0,
            },
            severity_sort = true,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN] = "",
                    [vim.diagnostic.severity.INFO] = "",
                    [vim.diagnostic.severity.HINT] = "",
                }
            },
            virtual_lines = {
                current_line = true,
            },
        })
        vim.lsp.enable({
            "basedpyright",
            "lua_ls",
        })
    end,
}

return M
