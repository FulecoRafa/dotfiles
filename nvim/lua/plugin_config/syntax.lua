local utils = require('utils')
local nvim_lsp = require('lspconfig')

-- Kommentary {{{
utils.lmap('n', '/', '<Plug>kommentary_line_default', {noremap = false})
utils.lmap('v', '/', '<Plug>kommentary_line_default', {noremap = false})
-- }}}

-- Indent Blankline {{{
require'indent_blankline'.setup {
  char = '|',
  buftype_exclude = {'terminal', 'NvimTree', 'Startify'}
}
-- }}}

-- Completion {{{
-- Use <Tab> and <S-Tab> to navigate through popup menu
utils.map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr=true})
utils.map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {expr=true})
utils.map('i', '<C-Space>', '<Cmd>lua require\'completion\'.triggerCompletion()<CR>', {silent=true})

-- Set completeopt to have a better completion experience
utils.opt('o', 'completeopt', 'menuone,noinsert,noselect')
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}

-- Avoid showing message extra message when using completion
vim.opt.shortmess:append({c = true})

vim.g.completion_enable_snippet = 'vim-vsnip'

utils.map('i', '<C-l>', "vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'", { expr = true, noremap = false })
utils.map('s', '<C-l>', "vsnip#available(-1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'", { expr = true, noremap = false })

-- }}}

-- Auto Pairs {{{
local npairs = require('nvim-autopairs')
npairs.setup{
  fast_wrap = {},
  check_ts = true
}

require'nvim-treesitter.configs'.setup {
  autopairs = { enabled = true }
}

MUtils= {}

vim.g.completion_confirm_key = ""

MUtils.completion_confirm=function()
  if vim.fn.pumvisible() ~= 0  then
    if vim.fn.complete_info()["selected"] ~= -1 then
      require'completion'.triggerCompletion()
      return npairs.esc("<c-y>")
    else
      vim.api.nvim_select_popupmenu_item(0 , false , false ,{})
      require'completion'.triggerCompletion()
      return npairs.esc("<c-n><c-y>")
    end
  else
    return npairs.autopairs_cr()
  end
end

utils.map('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
-- }}}

-- LSP {{{
local on_attach = function(client, bufnr)
  require('completion').on_attach()

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '[d', '<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<Leader>.', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('v', '\\.', '<Cmd>lua vim.lsp.buf.range_code_action({}, vim.api.nvim_buf_get_mark(0, "<"), vim.api.nvim_buf_get_mark(0,">"))<CR>', opts)
  buf_set_keymap('n', '<F6>', '<Cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  buf_set_keymap('v', '\\f', '<Cmd>lua vim.lsp.buf.range_formatting({}, vim.api.nvim_buf_get_mark(0, "<"), vim.api.nvim_buf_get_mark(0,">"))<CR>', opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits'
  }
}

local lspinstall = require'lspinstall'
lspinstall.setup()
local servers = lspinstall.installed_servers()

for _, lsp in pairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- }}}

-- Rust tools {{{
require'rust-tools'.setup{}
-- }}}

-- SQL {{{
nvim_lsp.sqls.setup {
  on_attach = function(client)
    client.resolved_capabilities.execute_command = true
    require'sqls'.setup{}
  end
}
-- }}}
