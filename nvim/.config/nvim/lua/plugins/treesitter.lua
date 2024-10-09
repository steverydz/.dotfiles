return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "css", "html", "javascript", "json", "python", "scss", "typescript"
      },

      sync_install = false,
      auto_install = false,
      indent = {
        enable = true
      },
      highlight = {
        -- `false` will disable the whole extension
        enable = true
      },
    })

    local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    treesitter_parser_config.templ = {
      install_info = {
        url = "https://github.com/vrischmann/tree-sitter-templ.git",
        files = {"src/parser.c", "src/scanner.c"},
        branch = "master",
      },
    }

    vim.treesitter.language.register("templ", "templ")
  end
}
