local utils = require('utils')
local cmd = vim.cmd

-- Global
cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'set nobackup'
utils.opt('o', 'foldmethod', 'marker')
utils.opt('o', 'mouse', 'niv')
utils.opt('o', 'scrolloff', 8)
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'hidden', true)

utils.opt('o', 'wildmode', 'full')

-- Line Numbers
utils.opt('o', 'number', true)
utils.opt('o', 'relativenumber', true)

-- Crosshairs
utils.opt('o', 'cursorline', true)
utils.opt('o', 'cursorcolumn', false)

-- Search
utils.opt('o', 'showmatch', true)
cmd 'set nohlsearch'
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'smartcase', true)

-- Tabbing
utils.opt('o', 'tabstop', 2)
utils.opt('o', 'softtabstop', 2)
utils.opt('o', 'expandtab', true)
utils.opt('o', 'shiftwidth', 2)
utils.opt('o', 'shiftround', true)
utils.opt('o', 'autoindent', true)
utils.opt('o', 'smartindent', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)

-- Hot Reload
cmd 'au CursorHold * checktime'

-- Invisible characters
utils.opt('o', 'list', true)
utils.opt('o', 'listchars', 'eol:¬,tab:=>,space:·')
utils.opt('o', 'encoding', 'utf-8')
utils.opt('o', 'fileencoding', 'utf-8')

-- Colorcolumn
utils.opt('o', 'colorcolumn', '80')
