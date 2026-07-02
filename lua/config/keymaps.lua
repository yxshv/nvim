local map = vim.keymap.set

map("n", "te", "<cmd>tabedit<cr>", { desc = "New tab" })
map("n", "<tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next tab/buffer" })
map("n", "<s-tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous tab/buffer" })

map("n", ",e", vim.diagnostic.open_float, { desc = "Open diagnostic" })
map("n", ",p", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", ",,p", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", ",q", vim.diagnostic.setloclist, { desc = "Diagnostics list" })

map({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to system clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })
map({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
map({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste before from system clipboard" })

map("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy plugins" })
map("n", "<leader>mm", "<cmd>Mason<cr>", { desc = "Mason tools" })
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit Neovim" })
