local utils = require('utils')

-- REST {{{
utils.lmap('n', 'ht', ":lua require('rest-nvim').run()<CR>", {silent = true})
-- }}}

-- Startify {{{
utils.lmap('n', '<Leader>st', ':Startify<CR>')
utils.lmap('n', '<Leader>ss', ':SSave<CR>')
utils.lmap('n', '<Leader>sd', ':SDelete<CR>')

vim.g.startify_lists = {
  { type = 'sessions', header = {'    Sessions'}},
  { type = 'dir', header = {'    MRU '..vim.loop.cwd()}},
  { type = 'bookmarks', header = {'    Bookmarks'}},
  { type = 'files', header = {'    MRU'}},
}

vim.g.startify_bookmarks = {
  { c = '~/.config/nvim/init.lua' },
  { z = '~/.zshrc' },
  { K = '~/.config/kitty/kitty.conf' }
}

vim.g.startify_custom_header = {
'    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
'    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
'    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
'    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
'    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
'    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
}

vim.g.startify_change_to_dir=0
vim.g.startify_session_persistence=0
-- }}}

-- Sideways {{{
utils.map('n', '<C-h>', ':SidewaysLeft<CR>')
utils.map('n', '<C-l>', ':SidewaysRight<CR>')
utils.map('n', '<M-h>', ':SidewaysJumpLeft<CR>')
utils.map('n', '<M-l>', ':SidewaysJumpRight<CR>')
utils.map('o', 'aa', '<Plug>SidewaysArgumentTextobjA', {noremap = false})
utils.map('x', 'aa', '<Plug>SidewaysArgumentTextobjA', {noremap = false})
utils.map('o', 'ia', '<Plug>SidewaysArgumentTextobjI', {noremap = false})
utils.map('x', 'ia', '<Plug>SidewaysArgumentTextobjI', {noremap = false})
utils.lmap('n', 'si', '<Plug>SidewaysArgumentInsertBefore', {noremap = false})
utils.lmap('n', 'sa', '<Plug>SidewaysArgumentAppendAfter', {noremap = false})
utils.lmap('n', 'sI', '<Plug>SidewaysArgumentInsertFirst', {noremap = false})
-- }}}

-- CamelCaseMotion {{{
utils.map('n', '<Leader>w', '<Plug>CamelCaseMotion_w', {noremap = false})
utils.map('n', '<Leader>b', '<Plug>CamelCaseMotion_b', {noremap = false})
utils.map('n', '<Leader>e', '<Plug>CamelCaseMotion_e', {noremap = false})
utils.map('n', '<Leader>ge', '<Plug>CamelCaseMotion_ge', {noremap = false})
utils.map('o', '<Leader>iw', '<Plug>CamelCaseMotion_iw', {noremap = false})
utils.map('x', '<Leader>iw', '<Plug>CamelCaseMotion_iw', {noremap = false})
utils.map('o', '<Leader>ib', '<Plug>CamelCaseMotion_ib', {noremap = false})
utils.map('x', '<Leader>ib', '<Plug>CamelCaseMotion_ib', {noremap = false})
utils.map('o', '<Leader>ie', '<Plug>CamelCaseMotion_ie', {noremap = false})
utils.map('x', '<Leader>ie', '<Plug>CamelCaseMotion_ie', {noremap = false})
-- }}}
