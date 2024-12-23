return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function()
			return {
				timeout_ms = 500,
				lsp_format = "fallback",
			}
		end,
		formatters_by_ft = {
			css = { "stylelint", "prettier" },
			lua = { "stylua" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			scss = { "stylelint", "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			python = { "black" },
		},
		formatters = {
			black = {
				prepend_args = { "--line-length", "79" },
			},
		},
	},
}
