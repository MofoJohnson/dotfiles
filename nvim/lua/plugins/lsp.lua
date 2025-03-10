local M = {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },

    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },

        registries = {
            "github:nvim-java/mason-registry",
            "github:mason-org/mason-registry",
        },
    },

    config = function(_, opts)
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")

        mason.setup(opts)

        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })

        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        local on_attach_opts = { noremap = true, silent = true }
        local keymap = vim.keymap
        local on_attach = function(_, bufnr)
            on_attach_opts.buffer = bufnr

            -- set keybinds
            on_attach_opts.desc = "Show LSP references"
            keymap.set("n", "gR", "<cmd>Telescope lsp_references<cr>", on_attach_opts) -- show definition, references

            on_attach_opts.desc = "Go to declaration"
            keymap.set("n", "gD", vim.lsp.buf.declaration, on_attach_opts) -- go to declaration

            on_attach_opts.desc = "Show LSP definitions"
            keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", on_attach_opts) -- show lsp definitions

            on_attach_opts.desc = "Show LSP implementations"
            keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", on_attach_opts) -- show lsp implementations

            on_attach_opts.desc = "Show LSP type definitions"
            keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", on_attach_opts) -- show lsp type definitions

            on_attach_opts.desc = "See available code actions"
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, on_attach_opts) -- see available code actions, in visual mode will apply to selection

            on_attach_opts.desc = "Show documentation for what is under cursor"
            keymap.set("n", "K", vim.lsp.buf.hover, on_attach_opts) -- show documentation for what is under cursor
        end

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        mason_lspconfig.setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    on_attach = on_attach,
                    capabilities = capabilities
                })
            end,

            ["lua_ls"] = function ()
                lspconfig.lua_ls.setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                    settings = { -- custom settings for lua
                        Lua = {
                            -- make the language server recognize "vim" global
                            diagnostics = {
                                globals = { "vim" },
                            },
                            workspace = {
                                -- make language server aware of runtime files
                                library = {
                                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                                    [vim.fn.stdpath("config") .. "/lua"] = true,
                                },
                            },
                        },
                    }
                })
            end,

            ["eslint"] = function ()
                lspconfig.eslint.setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "vue", "svelte", "astro" }
                })
            end
        })
    end

}

return M

