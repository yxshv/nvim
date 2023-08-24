local bfl = require("bufferline")

bfl.setup {
	options = {
		mode = "tabs",
		separator_style = "slope"
	},
	highlights = {
		buffer = {
			bold = false,
		},
		buffer_selected = {
			bold = true,
			italic = false
		}
	}
}

vim.keymap.set("n", "te", "<cmd>tabedit<cr>")
vim.keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<s-tab>", "<cmd>BufferLineCyclePrev<cr>")
