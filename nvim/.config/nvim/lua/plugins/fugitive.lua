return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "gw", "<cmd>Gwrite<CR>")
		vim.keymap.set("n", "gr", "<cmd>Gread<CR>")
		vim.keymap.set("n", "gc", "<cmd>Git commit<CR>")
	end,
}
