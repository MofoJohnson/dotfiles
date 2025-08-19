local M = {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    cmd = "Telescope",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        { "nvim-telescope/telescope-file-browser.nvim" },
    },

    -- set the keymaps
    keys = {
        { "<leader>ff", ":Telescope find_files<cr>" },
        { "<leader>fg", ":Telescope live_grep<cr>" },
        { "<leader>b", ":Telescope buffers<cr>" },
        { "<leader>fh", ":Telescope help_tags<cr>" },
        { "<leader>gf", ":Telescope git_files<cr>" },
        { "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<cr>", { noremap = true } },
    },

    -- options for telescope
    opts = {
        pickers = {
            find_files = {
                hidden = true,
            },

            live_grep = {
                additional_args = function(opts)
                    return { "--hidden" }
                end,
            },

            buffers = {
                initial_mode = "normal"
            },
        },

        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            },

            file_browser = {
                hijack_netrw = true,
                initial_mode = "normal"
            },
        }
    },

    config = function(_, opts)
        local telescope = require("telescope")
        telescope.setup(opts)

        telescope.load_extension("fzf")
        telescope.load_extension("file_browser")
    end
}

return M
