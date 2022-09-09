lua << EOF
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
}

for _, lsp in ipairs(servers) do
  local lsp_setup = { on_attach = on_attach }
  local capabilities = vim.lsp.protocol.make_client_capabilities()

  if lsp.capabilities then
    capabilities.textDocument.completion.completionItem.snippetSupport = true
  end

  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  lsp_setup["capabilities"] = capabilities

  nvim_lsp[lsp.server].setup(lsp_setup)
end

metals_config = require'metals'.bare_config()
metals_config.init_options.statusBarProvider = "on"
metals_config.settings = {
  showImplicitArguments = true,
  excludedPackages = {}
}
local capabilities = vim.lsp.protocol.make_client_capabilities()
metals_config.capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

metals_config.on_attach = on_attach

vim.cmd([[hi! link LspReferenceText CursorColumn]])
vim.cmd([[hi! link LspReferenceRead CursorColumn]])
vim.cmd([[hi! link LspReferenceWrite CursorColumn]])
EOF

nnoremap <silent> <leader>ws  <cmd>lua require'metals'.hover_worksheet()<CR>
nnoremap <silent> <leader>a   <cmd>lua require'metals'.open_all_diagnostics()<CR>

augroup lsp
  au!
  au FileType scala setlocal omnifunc=v:lua.vim.lsp.omnifunc
  au FileType java,scala,sbt lua require('metals').initialize_or_attach(metals_config)
augroup end
