local cmd = vim.cmd
local utils = require('utils')
local map = utils.map
local gesture = require('gesture')

local mouse_button = 'Right'
-- local mouse_button = 'Left'

local right = gesture.right
local left = gesture.left
local up = gesture.up
local down = gesture.down

map('n', '<'..mouse_button..'Mouse>', '<Nop>')
map('n', '<'..mouse_button..'Drag>', ':lua require("gesture").draw()<CR>', { silent = true })
map('n', '<'..mouse_button..'Release>', ':lua require("gesture").finish()<CR>', { silent = true })

gesture.register({
  name = "Open tree navigation",
  inputs = { right() },
  action = "NvimTreeOpen"
})

gesture.register({
  name = "Close tree navigation",
  inputs = { left() },
  action = "NvimTreeClose"
})

gesture.register({
  name = 'Search files',
  inputs = { right(), down(), left(), up() },
  action = 'Telescope find_files'
})

gesture.register({
  name = 'Search buffers',
  inputs = { left(), down(), right(), up() },
  action = 'Telescope buffers'
})

gesture.register({
  name = "Open Terminal",
  inputs = { up() },
  action = function()
    cmd '15sp'
    cmd 'term'
  end
})

--[[
gesture.register({
  name = "Close Terminal",
  inputs = { gesture.down() },
  action = ":sp<CR>:term<CR>"
})
--]]
