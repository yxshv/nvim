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
        dashboard.button(";f", "Find file", "<cmd>Telescope find_files hidden=true no_ignore=false<cr>"),
        dashboard.button(";r", "Live grep", "<cmd>Telescope live_grep<cr>"),
        dashboard.button("\\\\", "Buffers", "<cmd>Telescope buffers<cr>"),
        dashboard.button("sf", "File browser", "<cmd>Telescope file_browser hidden=true grouped=true<cr>"),
        dashboard.button("<leader>gg", "Git panel", "<cmd>Neogit<cr>"),
        dashboard.button("<leader>ll", "Lazy plugins", "<cmd>Lazy<cr>"),
        dashboard.button("<leader>mm", "Mason tools", "<cmd>Mason<cr>"),
        dashboard.button("<leader>qq", "Quit", "<cmd>qa<cr>"),
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
        "neogit                     VS Code-like Git panel. Use <leader>gg.",
        "diffview.nvim              Rich git diffs used by Neogit.",
        "gitsigns.nvim              Git signs, hunks, blame, and diffs. See keys below.",
        "bufferline.nvim            Top tab/buffer bar.",
        "nvim-web-devicons          File icons for UI plugins.",
        "lualine.nvim               Statusline.",
        "kanagawa.nvim              Colorscheme with transparent background.",
        "",
        "Neogit keys",
        "",
        "<leader>gg                 Open the Git panel.",
        "<leader>gc                 Open the commit popup.",
        "<leader>gP                 Open the push popup.",
        "<leader>gL                 Open the pull popup.",
        "Inside Neogit: s           Stage the item under the cursor.",
        "Inside Neogit: S           Stage all unstaged changes.",
        "Inside Neogit: Ctrl-s      Stage everything.",
        "Inside Neogit: u           Unstage the item under the cursor.",
        "Inside Neogit: U           Unstage all staged changes.",
        "",
        "Gitsigns keys",
        "",
        "]h                         Next git hunk.",
        "[h                         Previous git hunk.",
        "<leader>gp                 Preview the current hunk.",
        "<leader>gi                 Preview the current hunk inline.",
        "<leader>gs                 Stage the current hunk or visual selection.",
        "<leader>gr                 Reset the current hunk or visual selection.",
        "<leader>gS                 Stage the whole buffer.",
        "<leader>gR                 Reset the whole buffer.",
        "<leader>gb                 Show blame for the current line.",
        "<leader>gd                 Diff this file against the index.",
        "<leader>gD                 Diff this file against the previous commit.",
        "<leader>gq                 Send git hunks to the quickfix list.",
        "<leader>gt                 Toggle inline blame.",
        "<leader>gw                 Toggle word diff.",
        "visual ih                  Select the current hunk.",
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
