return {
  'shaunsingh/nord.nvim',
  priority = 1000,
  init = function()
    vim.g.nord_italic = false
    vim.cmd.colorscheme 'nord'
    vim.cmd.hi 'Comment gui=none'
  end,
}
