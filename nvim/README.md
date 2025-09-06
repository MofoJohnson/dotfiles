## Core
### `keymaps.lua`
This is where key mappings are stored

### `lazy.lua`
Sets up Lazy plugin manager

### `options.lua`
Contains various settings I changed

## Plugins
### List of plugins installed
- [auto-session](https://github.com/rmagatti/auto-session)
- [blink-cmp-conventional-commits](https://github.com/disrupted/blink-cmp-conventional-commits)
- [blink-copilot](https://github.com/fang2hou/blink-copilot)
- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [copilot.lua](https://github.com/zbirenbaum/copilot.lua)
- [conform.nvim](https://github.com/stevearc/conform.nvim)
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [neogit](https://github.com/NeogitOrg/neogit)
- [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## Maintenance
### LSP
#### Add new LSP server:
- install the server using Homebrew
- enable the lsp with `vim.lsp.enable()`

#### Configure LSP server:
- all LSP servers are already pre-configured with nvim-lspconfig
- however, use `vim.lsp.config("<lsp>")` to manually configure an LSP server
