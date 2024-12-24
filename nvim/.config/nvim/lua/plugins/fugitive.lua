return {
	"tpope/vim-fugitive",
	config = function()
		-- :Git add %
		vim.keymap.set("n", "<leader>gw", "<cmd>Gwrite<CR>")

		-- :Git checkout %
		vim.keymap.set("n", "<leader>gr", "<cmd>Gread<CR>")

		vim.keymap.set("n", "<leader>gc", "<cmd>Git commit<CR>")
		vim.keymap.set("n", "<leader>gp", "<cmd>Git push<CR>")
		vim.keymap.set("n", "<leader>gfo", "<cmd>Git fetch origin<CR>")
		vim.keymap.set("n", "<leader>gfu", "<cmd>Git fetch upstream<CR>")
	end,
}
