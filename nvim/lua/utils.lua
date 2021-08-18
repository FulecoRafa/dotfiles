local utils = {}

local scopes = { o = vim.o, b = vim.bo, w = vim.wo }

function utils.opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function utils.lmap(mode, lhs, rhs, opts)
  utils.map(mode, '<Leader>'..lhs, rhs, opts)
end

function utils.get_short_pwd()
  local unpack = table.unpack or unpack
  local str = vim.loop.cwd()
  local sep = '/'
  local l = {}
  local h = {}
  for s in string.gmatch(str, '([^'..sep..']+)') do
    table.insert(l, string.sub(s, 1, 1))
    table.insert(h, s)
  end
  local first = table.concat(
    {
      unpack(
      l,
      math.max(#l-5, 1),
      math.max(#l-2, 1)
      )
    },
    sep
  )
  local last = table.concat(
    {
      unpack(
      h,
      math.max(#h-1, 1)
      )
    },
    sep
  )
  local resul = string.gsub(first..sep..last, 'h/%a', '~')
  return string.gsub(resul, 'home/%a*', '~')
end

function utils.get_buf_dir()
  local buf_num = vim.api.nvim_get_current_buf()
  local buf_name = vim.api.nvim_buf_get_name({buf_num})
  return string.match(buf_name, '.*/')
end

return utils
