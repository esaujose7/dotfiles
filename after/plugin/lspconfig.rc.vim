if !exists('g:lspconfig')
  finish
endif

lua << EOF
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Mappings ?
  local opts = { noremap = true, silent = true }

  buf_set_keymap('n', '<leader>gd', '<Cmd> lua vim.lsp.buf.definition()<CR>', opts)

  require 'completion'.on_attach(client, bufnr)
end

local servers = { 
  { server = "tsserver" }, 
  { server = "html", capabilities = capabilities },
  { server = "cssls", capabilities = capabilities },
  { server = "jsonls", capabilities = capabilities },
  { server = "dockerls" },
  { server = "graphql" },
}

for _, lsp in ipairs(servers) do
  local lsp_setup = { on_attach = on_attach }

  if lsp.capabilities ~= nil then
    lsp_setup["capabilities"] = lsp.capabilities
  end

  nvim_lsp[lsp.server].setup(lsp_setup)
end
EOF
