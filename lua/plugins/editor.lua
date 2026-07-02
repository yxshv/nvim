return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")
      local fb_actions = require("telescope").extensions.file_browser.actions

      local function telescope_buffer_dir()
        return vim.fn.expand("%:p:h")
      end

      telescope.setup({
        defaults = {
          mappings = {
            n = { q = actions.close },
          },
        },
        extensions = {
          file_browser = {
            theme = "dropdown",
            hijack_netrw = true,
            mappings = {
              i = {
                ["<C-w>"] = function()
                  vim.cmd("normal vbd")
                end,
              },
              n = {
                N = fb_actions.create,
                h = fb_actions.goto_parent_dir,
                ["/"] = function()
                  vim.cmd("startinsert")
                end,
              },
            },
          },
        },
      })

      telescope.load_extension("file_browser")

      vim.keymap.set("n", ";f", function()
        builtin.find_files({ hidden = true, no_ignore = false })
      end, { desc = "Find files" })
      vim.keymap.set("n", ";r", builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set("n", "\\\\", builtin.buffers, { desc = "Buffers" })
      vim.keymap.set("n", ";t", builtin.help_tags, { desc = "Help tags" })
      vim.keymap.set("n", ";;", builtin.resume, { desc = "Resume telescope" })
      vim.keymap.set("n", ";e", builtin.diagnostics, { desc = "Diagnostics" })
      vim.keymap.set("n", "sf", function()
        telescope.extensions.file_browser.file_browser({
          path = "%:p:h",
          cwd = telescope_buffer_dir(),
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = false,
          initial_mode = "normal",
          layout_config = { height = 40 },
        })
      end, { desc = "File browser" })
    end,
  },
  {
    "voldikss/vim-floaterm",
    config = function()
      vim.keymap.set("n", "<c-space>", "<cmd>FloatermNew --width=0.7 --height=0.8 --title=Terminal<cr>", { desc = "Floating terminal" })
      vim.keymap.set("t", "<c-space>", "<cmd>FloatermToggle<cr>", { desc = "Toggle floating terminal" })
    end,
  },
}
