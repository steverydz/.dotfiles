return {
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
  opts = {
  },
  config = function()
    require("rose-pine").setup({
      variant = "auto",      -- auto, main, moon, or dawn
      dark_variant = "main", -- main, moon, or dawn
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      enable = {},
      styles = {
        italic = false,
      },
      groups = {},
      palette = {},
      highlight_groups = {},
      before_highlight = function()
      end,
    })
    vim.cmd.colorscheme("rose-pine")
  end,
}
