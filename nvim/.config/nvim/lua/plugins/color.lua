return {
	"rose-pine/neovim",
	lazy = false,
	priority = 1000,
	config = function()
		--- @diagnostic disable-next-line missing-fields
		require("rose-pine").setup({
			styles = {
				italic = false,
			},
		})
		vim.cmd.colorscheme("rose-pine-moon")
	end,
}
