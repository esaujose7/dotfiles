local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap = true, silent = true }

  buf_set_keymap('n', '<leader>gd', '<Cmd> lua vim.lsp.buf.definition()<CR>', opts)
end

local servers = { 
  { server = "tsserver" }, 
  { server = "eslint" },
  { server = "html", capabilities = true },
  { server = "cssls", capabilities = true },
  { server = "jsonls", capabilities = true },
  { server = "dockerls" },
  { server = "graphql" },
  { server = "pyright" },
}

for _, lsp in ipairs(servers) do
  local lsp_setup = { on_attach = on_attach }
  local capabilities = vim.lsp.protocol.make_client_capabilities()

  if lsp.capabilities then
    capabilities.textDocument.completion.completionItem.snippetSupport = true
  end

  capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
  lsp_setup["capabilities"] = capabilities

  nvim_lsp[lsp.server].setup(lsp_setup)
end

vim.cmd([[hi! link LspReferenceText CursorColumn]])
vim.cmd([[hi! link LspReferenceRead CursorColumn]])
vim.cmd([[hi! link LspReferenceWrite CursorColumn]])
