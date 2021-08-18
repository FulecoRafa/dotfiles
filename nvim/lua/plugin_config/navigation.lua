local utils = require('utils')

local nav_leader = 'ç'

local function navmap(mode, lhs, rhs, opts)
  utils.map(mode, nav_leader..lhs, rhs, opts)
end

-- NvimTree {{{
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_auto_ignore_ft = { 'startify' }
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_bindings = {
  { key = 'f', cb = ':wincmd l<CR>' }
}
navmap('n', 'o', ':NvimTreeClose<CR>:NvimTreeOpen<CR>:NvimTreeRefresh<CR>')
navmap('n', 'q', ':NvimTreeClose<CR>')
navmap('n', 'e', ':NvimTreeFindFile<CR>')
-- }}}

-- Bufferline {{{
require('bufferline').setup{
  options = {
    separator_style = 'slant',
    diagnostics = 'nvim_lsp',
    middle_mouse_command = "bdelete! %d",
    tab_size = 10,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    },
    custom_areas = {
      right = function()
        return {{text = ''..utils.get_short_pwd()..'  ', guifg = '#7EA9A7'}}
      end
    }
  }
}
utils.map('n', ']b', ':BufferLineCycleNext<CR>')
utils.map('n', '[b', ':BufferLineCyclePrev<CR>')
utils.lmap('n', '>', ':BufferLineMoveNext<CR>')
utils.lmap('n', '<', ':BufferLineMovePrev<CR>')
utils.lmap('n', 'y', ':BufferLinePick<CR>')
utils.lmap('n', 'db', ':bdelete! %<CR>')
-- }}}

-- Telescope {{{
local pickers = require'telescope.pickers'
local finders = require'telescope.finders'

local function get_adjacent_files()
  local dir = utils.get_buf_dir()
  local resul = {}
  local pfile = io.popen'ls '..dir..' -p | grep -v /'
  for file in pfile:lines() do
    table.insert(resul, file)
  end
  return resul
end

AdjecentPicker = function(opts)
  pickers.new(opts, {
    prompt_title = 'Adjacent Files',
    finder = finders.new_table {
      results = get_adjacent_files()
    },
    attach_mappings = function() return true end
  }):find()
end

local telescope = require('telescope')
telescope.setup {
  defaults = {
    layout_config = {
      vertical = {
        mirror = true,
      }
    },
    file_ignore_patterns = {'*.git*', '*node_modules*', '*build*', '*dist*', '*target*'}
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        },
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        }
      }
    }
  },
  extensions = {
    AdjacentPicker
  }
}

navmap('n', 'f', '<cmd>Telescope find_files<cr>')
navmap('n', 'b', '<cmd>Telescope buffers<cr>')
navmap('n', 's', '<cmd>Telescope lsp_workspace_symbols<cr>')
navmap('n', 'u', '<cmd>Telescope lsp_references<cr>')
navmap('n', 'm', '<cmd>Telescope keymaps<cr>')
navmap('n', 'p', '<cmd>Telescope commands<cr>')
navmap('n', 'P', '<cmd>Telescope planets<cr>')
navmap('n', 'g', '<cmd>Telescope git_branches<cr>')
navmap('n', 'c', '<cmd>Telescope git_commits<cr>')
navmap('n', 'w', '<cmd>Telescope live_grep<cr>')
-- }}}
