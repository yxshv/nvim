return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "NVIM",
        "",
        "Yash's Neovim setup",
      }

      dashboard.section.buttons.val = {
        dashboard.button("f", "Find file", "<cmd>Telescope find_files hidden=true<cr>"),
        dashboard.button("g", "Live grep", "<cmd>Telescope live_grep<cr>"),
        dashboard.button("b", "Buffers", "<cmd>Telescope buffers<cr>"),
        dashboard.button("e", "File browser", "<cmd>Telescope file_browser hidden=true grouped=true<cr>"),
        dashboard.button("l", "Lazy plugins", "<cmd>Lazy<cr>"),
        dashboard.button("m", "Mason tools", "<cmd>Mason<cr>"),
        dashboard.button("q", "Quit", "<cmd>qa<cr>"),
      }

      local plugin_guide = {
        "Plugin guide",
        "",
        "lazy.nvim                  Plugin manager. Use :Lazy and :Lazy sync.",
        "mason.nvim                 Installs external editor tools. Use :Mason.",
        "mason-lspconfig.nvim       Connects Mason tools to Neovim LSP configs.",
        "nvim-lspconfig             Language servers for diagnostics, hover, definitions.",
        "nvim-cmp                   Autocomplete popup.",
        "cmp-nvim-lsp               LSP completion source for nvim-cmp.",
        "cmp-buffer                 Completion from words in the current buffer.",
        "cmp-path                   Filesystem path completion.",
        "LuaSnip                    Snippet expansion engine.",
        "cmp_luasnip                LuaSnip completion source.",
        "lspkind.nvim               Icons and labels in completion menu.",
        "nvim-autopairs             Auto-closes brackets, quotes, and pairs.",
        "nvim-treesitter            Better syntax highlighting and indentation.",
        "telescope.nvim             Fuzzy finder for files, grep, buffers, help.",
        "telescope-file-browser     File browser inside Telescope. Use sf.",
        "plenary.nvim               Shared utility library used by plugins.",
        "vim-floaterm               Floating terminal. Use Ctrl-Space.",
        "gitsigns.nvim              Git signs, hunks, blame, and diffs.",
        "bufferline.nvim            Top tab/buffer bar.",
        "nvim-web-devicons          File icons for UI plugins.",
        "lualine.nvim               Statusline.",
        "kanagawa.nvim              Colorscheme with transparent background.",
      }

      dashboard.section.footer.val = plugin_guide
      dashboard.section.footer.opts.hl = "Comment"

      dashboard.config.layout = {
        { type = "padding", val = 2 },
        dashboard.section.header,
        { type = "padding", val = 1 },
        dashboard.section.buttons,
        { type = "padding", val = 1 },
        dashboard.section.footer,
      }

      alpha.setup(dashboard.config)
    end,
  },
}
