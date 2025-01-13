return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.statusline").setup()
		require("mini.pairs").setup()

		-- mini.comment keybindings
		-- gcc    - toggle comment
		-- gc     - comment (Visual mode)
		require("mini.comment").setup()

		-- mini.surround keybindings
		-- va'    - Visually select around '
		-- ci'    - Change inside '
		-- sa'    - Surround '
		-- saiw'  - Surround add inner word '
		-- sd'    - Surround delete '
		-- sr'"   - Surround replace ' with "
		require("mini.surround").setup()
	end,
}
