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

  local opts = { noremap = true, silent = true }

  buf_set_keymap('n', '<leader>gd', '<Cmd> lua vim.lsp.buf.definition()<CR>', opts)
end

local servers = { 
  { server = "tsserver" }, 
  { server = "eslint" },
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

--metals_config = require'metals'.bare_config
--metals_config.init_options.statusBarProvider = "on"
--metals_config.settings = {
 --  showImplicitArguments = true,
  -- excludedPackages = {}
--}

--metals_config.on_attach = on_attach

--vim.cmd([[hi! link LspReferenceText CursorColumn]])
--vim.cmd([[hi! link LspReferenceRead CursorColumn]])
--vim.cmd([[hi! link LspReferenceWrite CursorColumn]])
EOF

nnoremap <silent> <leader>ws  <cmd>lua require'metals'.hover_worksheet()<CR>
nnoremap <silent> <leader>a   <cmd>lua require'metals'.open_all_diagnostics()<CR>

augroup lsp
  au!
  au FileType scala,sbt lua require('metals').initialize_or_attach(metals_config)
augroup end
