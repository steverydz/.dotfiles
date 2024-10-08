-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- 'Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use('nvim-lua/plenary.nvim')
  use('pangloss/vim-javascript')
  use('leafgarland/typescript-vim')
  use('peitalin/vim-jsx-typescript')
  use({ 'neoclide/coc.nvim', branch = 'release' })
  use('neoclide/coc-prettier')
  use('fannheyward/coc-pyright')
  use('neoclide/coc-css')
  use('neoclide/coc-eslint')
  use('nvim-tree/nvim-web-devicons')
  use({'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }})
  use('tpope/vim-fugitive')

  vim.g.coc_global_extensions = {'coc-tsserver', 'coc-prettier', 'coc-pyright', 'coc-css', 'coc-eslint'}
end)

