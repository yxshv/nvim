require("nvim-treesitter.configs").setup {

	highlight = {
		enable = true,
		disable = {},
	},

	ensure_installed = { "lua", "tsx", "elixir", "typescript", "python" }
}
