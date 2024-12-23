return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"css",
			"html",
			"javascript",
			"json",
			"lua",
			"python",
			"scss",
			"tsx",
			"typescript",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
			disable = {
				"html",
				"css",
				"scss",
			},
		},
	},
}
