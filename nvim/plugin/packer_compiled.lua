-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rafael/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rafael/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rafael/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rafael/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rafael/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  CamelCaseMotion = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/CamelCaseMotion"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  firenvim = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["gesture.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/gesture.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/oceanic-next"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/presence.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/rainbow"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/rest.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/rust-tools.nvim"
  },
  ["scrollbar.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/scrollbar.nvim"
  },
  ["sideways.vim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/sideways.vim"
  },
  ["specs.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/specs.nvim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/splitjoin.vim"
  },
  ["sqls.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/sqls.nvim"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/switch.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-styled-components"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/vim-styled-components"
  },
  ["vim-surround"] = {
    config = { "\27LJ\2\2]\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\14{{{ \r }}}\17surround_116\f{{ \r }}\17surround_100\6g\bvim\0" },
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/home/rafael/.local/share/nvim/site/pack/packer/start/vim-toml"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-surround
time([[Config for vim-surround]], true)
try_loadstring("\27LJ\2\2]\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\14{{{ \r }}}\17surround_116\f{{ \r }}\17surround_100\6g\bvim\0", "config", "vim-surround")
time([[Config for vim-surround]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
