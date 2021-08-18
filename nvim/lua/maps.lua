local utils = require('utils')
local map = utils.map
local lmap = utils.lmap

map('i', 'jj', '<Esc>') -- normal
map('n', 'gp', '`[v`]') -- mark pasted text
map('v', '<', '<gv') -- remark on outdent
map('v', '>', '>gv') -- remark on indent
lmap('n', 'so', ':luafile ~/.config/nvim/init.lua<CR>') -- resource

-- Tab control
lmap('n', 'tt', ':tabe ')
lmap('n', 'tc', ':tabc')

-- Terminal
lmap('n', 'te', ':tabe<CR>:term<CR>') -- open terminal in window
lmap('n', 'it', ':15sp<CR>:term<CR>') -- open terminal below

-- Entire file
lmap('n', 'ay', 'gg"+yG$:echo "All copied"<CR>') -- yank file
lmap('n', 'ay', 'gg"+yG$<CR>') -- mark file

-- ;
map('n', '<M-;>', 'A;<Esc>')
map('i', '<M-;>', '<Esc>A;<Esc>')

-- "Window mode"
lmap('n', '<Tab>h', ':wincmd h<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>j', ':wincmd j<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>k', ':wincmd k<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>l', ':wincmd l<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>H', ':wincmd H<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>J', ':wincmd J<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>K', ':wincmd K<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>L', ':wincmd L<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>-', ':wincmd -<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>+', ':wincmd +<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab><', ':wincmd <<CR><Leader><Tab>', {noremap = false})
lmap('n', '<Tab>>', ':wincmd ><CR><Leader><Tab>', {noremap = false})
-- window management and navigation
lmap('n', '<Tab>v', ':vsp<CR>')
lmap('n', '<Tab>s', ':sp<CR>')
map('n', '<Tab>h', ':wincmd h<CR>', {noremap = false})
map('n', '<Tab>j', ':wincmd j<CR>', {noremap = false})
map('n', '<Tab>k', ':wincmd k<CR>', {noremap = false})
map('n', '<Tab>l', ':wincmd l<CR>', {noremap = false})
map('n', '<Tab>H', ':wincmd H<CR>', {noremap = false})
map('n', '<Tab>J', ':wincmd J<CR>', {noremap = false})
map('n', '<Tab>K', ':wincmd K<CR>', {noremap = false})
map('n', '<Tab>L', ':wincmd L<CR>', {noremap = false})
map('n', '<Tab>-', ':wincmd -<CR>', {noremap = false})
map('n', '<Tab>+', ':wincmd +<CR>', {noremap = false})
map('n', '<Tab><', ':wincmd <<CR>', {noremap = false})
map('n', '<Tab>>', ':wincmd ><CR>', {noremap = false})
map('n', '<Tab>o', ':wincmd o<CR>', {noremap = false})
map('n', '<Tab><Tab>', '<C-^>')

