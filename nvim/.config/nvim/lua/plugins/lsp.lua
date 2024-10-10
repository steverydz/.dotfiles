return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "muniftanjim/prettier.nvim",
  },

  config = function()
    require("mason").setup({})

    require("mason-lspconfig").setup({
      ensure_installed = { "ts_ls", "eslint", "stylelint_lsp" },
    })

    local lspconfig = require("lspconfig")

    require("lspconfig").ts_ls.setup({})
    require("lspconfig").eslint.setup({})
    require("lspconfig").stylelint_lsp.setup({})

    local prettier_group = vim.api.nvim_create_augroup("prettier_on_save", { clear = false })

    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      pattern = { "*.js", "*.jsx", "*.json", "*.ts", "*.tsx" },
      group = prettier_group,
      command = ":Prettier"
    })
  end
}
