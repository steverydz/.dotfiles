return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.statusline").setup()
		require("mini.comment").setup()
	end,
}
