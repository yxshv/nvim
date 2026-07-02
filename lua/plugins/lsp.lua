return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = { "astro" },
      automatic_enable = false,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      vim.lsp.config("sourcekit", {
        cmd = { "xcrun", "sourcekit-lsp" },
        filetypes = { "swift" },
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
        callback = function(event)
          local opts = { buffer = event.buf, silent = true }
          vim.bo[event.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", ",d", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", ",f", function()
            vim.lsp.buf.format({ async = true })
          end, opts)
        end,
      })

      vim.lsp.enable({
        "pyright",
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "astro",
        "flow",
        "sourcekit",
      })
    end,
  },
}
