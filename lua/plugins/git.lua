return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      signs_staged = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      signcolumn = true,
      numhl = false,
      linehl = false,
      word_diff = false,
      current_line_blame = false,
      attach_to_untracked = true,
      on_attach = function(bufnr)
        local gitsigns = require("gitsigns")

        local function map(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true, desc = desc })
        end

        map("n", "]h", function()
          if vim.wo.diff then
            vim.cmd.normal({ "]c", bang = true })
          else
            gitsigns.nav_hunk("next")
          end
        end, "Next git hunk")

        map("n", "[h", function()
          if vim.wo.diff then
            vim.cmd.normal({ "[c", bang = true })
          else
            gitsigns.nav_hunk("prev")
          end
        end, "Previous git hunk")

        map("n", "<leader>gs", gitsigns.stage_hunk, "Stage git hunk")
        map("n", "<leader>gr", gitsigns.reset_hunk, "Reset git hunk")
        map("v", "<leader>gs", function()
          gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, "Stage selected git hunk")
        map("v", "<leader>gr", function()
          gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, "Reset selected git hunk")

        map("n", "<leader>gS", gitsigns.stage_buffer, "Stage git buffer")
        map("n", "<leader>gR", gitsigns.reset_buffer, "Reset git buffer")
        map("n", "<leader>gp", gitsigns.preview_hunk, "Preview git hunk")
        map("n", "<leader>gi", gitsigns.preview_hunk_inline, "Preview git hunk inline")
        map("n", "<leader>gb", function()
          gitsigns.blame_line({ full = true })
        end, "Git blame line")
        map("n", "<leader>gd", gitsigns.diffthis, "Git diff buffer")
        map("n", "<leader>gD", function()
          gitsigns.diffthis("~")
        end, "Git diff against previous commit")
        map("n", "<leader>gq", gitsigns.setqflist, "Git hunks quickfix")
        map("n", "<leader>gt", gitsigns.toggle_current_line_blame, "Toggle git blame")
        map("n", "<leader>gw", gitsigns.toggle_word_diff, "Toggle git word diff")
        map({ "o", "x" }, "ih", gitsigns.select_hunk, "Select git hunk")
      end,
    },
  },
}
