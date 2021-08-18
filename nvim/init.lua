local fn = vim.fn
local execute = vim.api.nvim_command
local cmd = vim.cmd

vim.g.mapleader = ' '

require('config')

-- Auto install packer.nvim {{{
local packer_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(packer_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..packer_path)
end

vim.cmd [[packadd packer.nvim]]
-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- autocompile on changes to plugins
-- }}}

require('maps')

require('plugins')
require('plugin_config.init')

cmd 'colorscheme neon'
