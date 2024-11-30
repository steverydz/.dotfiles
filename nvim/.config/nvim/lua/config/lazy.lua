-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }

  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require 'plugins.autocomplete',
  require 'plugins.autoformat',
  -- require 'plugins.autopairs',
  require 'plugins.color',
  -- require 'plugins.debug',
  require 'plugins.gitsigns',
  -- require 'plugins.indent_line',
  require 'plugins.lazydev',
  require 'plugins.lint',
  require 'plugins.lsp',
  require 'plugins.luvit-meta',
  require 'plugins.mini',
  -- require 'plugins.neo-tree',
  require 'plugins.telescope',
  require 'plugins.todo-comments',
  require 'plugins.treesitter',
  require 'plugins.vim-sleuth',
  require 'plugins.which-key',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
