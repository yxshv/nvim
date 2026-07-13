return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa-dragon")

      local transparent_groups = {
        "Normal",
        "NormalNC",
        "SignColumn",
        "EndOfBuffer",
        "LineNr",
        "CursorLineNr",
        "StatusLine",
        "StatusLineNC",
        "TabLine",
        "TabLineFill",
      }

      for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "NONE" })
      end

      -- Keep floating windows opaque so hover documentation stands apart
      -- from the code underneath the terminal's transparent background.
      vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#dcd7ba", bg = "#1f1f28" })
      vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#7e9cd8", bg = "#1f1f28" })
      vim.api.nvim_set_hl(0, "FloatTitle", { fg = "#7e9cd8", bg = "#1f1f28", bold = true })
      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff", bg = "NONE" })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "kanagawa",
          globalstatus = true,
        },
      })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "tabs",
          separator_style = { "", "" },
          indicator = { style = "none" },
          show_buffer_close_icons = true,
          show_close_icon = true,
        },
        highlights = {
          fill = { bg = "NONE" },
          background = { bg = "NONE" },
          buffer = { bg = "NONE", bold = false },
          buffer_visible = { bg = "NONE" },
          buffer_selected = { bg = "NONE", bold = true, italic = false },
          separator = { bg = "NONE", fg = "#54546d" },
          separator_visible = { bg = "NONE", fg = "#54546d" },
          separator_selected = { bg = "NONE", fg = "#7e9cd8" },
          close_button = { bg = "NONE" },
          close_button_visible = { bg = "NONE" },
          close_button_selected = { bg = "NONE" },
          tab = { bg = "NONE" },
          tab_selected = { bg = "NONE", bold = true },
          tab_separator = { bg = "NONE", fg = "#54546d" },
          tab_separator_selected = { bg = "NONE", fg = "#7e9cd8" },
        },
      })
    end,
  },
}
