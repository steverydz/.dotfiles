return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "gw", "<cmd>Gwrite<CR>")
		vim.keymap.set("n", "gr", "<cmd>Gread<CR>")
		vim.keymap.set("n", "gc", "<cmd>Git commit<CR>")
		vim.keymap.set("n", "gp", "<cmd>Git push<CR>")
		vim.keymap.set("n", "gfo", "<cmd>Git fetch origin<CR>")
		vim.keymap.set("n", "gfu", "<cmd>Git fetch upstream<CR>")
	end,
}
