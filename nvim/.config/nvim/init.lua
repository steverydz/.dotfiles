vim.opt.scrolloff = 8
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.colorcolumn = "79"
vim.g.html_indent_autotags = 'html'

local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim', { tag = '0.1.8' })
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug ('neoclide/coc.nvim', { branch = 'release' })
Plug 'mofiqul/vscode.nvim'
Plug 'neoclide/coc-prettier'
Plug 'fannheyward/coc-pyright'
Plug 'neoclide/coc-css'
Plug 'neoclide/coc-eslint'

vim.call('plug#end')

vim.g.coc_global_extensions = {'coc-tsserver', 'coc-prettier', 'coc-pyright', 'coc-css', 'coc-eslint'}

vim.cmd.colorscheme('vscode')

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      'node_modules'
    }
  }
}

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true })
end

vim.g.mapleader = ' '

map('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>')
map('n', '<leader>pv', ':Vex<CR>')
map('n', '<C-k>', ':cnext<CR>')
map('n', '<C-j>', ':cprev<CR>')
map('n', '<C-E>', ':copen<CR>')
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')
