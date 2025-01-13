return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.statusline").setup()
		require("mini.comment").setup()
		require("mini.pairs").setup()
	end,
}
