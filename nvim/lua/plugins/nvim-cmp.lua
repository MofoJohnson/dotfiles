local M = {
    "hrsh7th/nvim-cmp",
    -- plugin will load when in insert mode
    event = "InsertEnter",
    dependencies = {
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "L3MON4D3/LuaSnip" },
        { "saadparwaiz1/cmp_luasnip" },
        { "rafamadriz/friendly-snippets" },
    },

    opts = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        return {
            completion = {
                completeopt = "menu,menuone,preview,noselect"
            },

            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            },

            mapping = cmp.mapping.preset.insert({
                -- previous suggestion
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                -- next suggestion
                ["<Tab>"] = cmp.mapping.select_next_item(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                -- show completion suggestions
                ["<C-Space>"] = cmp.mapping.complete(),
                -- close completion window
                ["<C-e>"] = cmp.mapping.abort(),
                ["<cr>"] = cmp.mapping.confirm({ select = false })
            }),

            -- sources for autocompletion
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }, -- snippets
                { name = "buffer" }, -- text within current buffer
                { name = "path" } -- file system paths
            })
        }
    end,

    config = function(_, opts)
        local cmp = require("cmp")
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup(opts)
    end,
}

return M

