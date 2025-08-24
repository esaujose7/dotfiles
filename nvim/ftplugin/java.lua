local home = os.getenv "HOME"
local workspace_path = home .. "/.cache/jdtls-workspace/"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = workspace_path .. project_name

local os_config = "linux"
if vim.fn.has "mac" == 1 then
  os_config = "mac"
end

local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local config = {
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '-jar',
    vim.fn.glob(home .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),
    '-configuration',
     mason_path .. "packages/jdtls/config_" .. os_config,
    '-data',
    workspace_dir
  },
  root_dir = vim.fs.root(0, {".git", "mvnw", "gradlew"}),
  settings = {
    java = {
      eclipse = {
        downloadSources = true,
      },
      configuration = {
        updateBuildConfiguration = "interactive",
      },
      maven = {
        downloadSources = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      references = {
        includeDecompiledSources = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = "all",
        },
      },
      format = {
        enabled = false,
      },
    },
    signatureHelp = { enabled = true },
  },
  init_options = {
    bundles = {}
  },
  capabilities = capabilities
}

require('jdtls').start_or_attach(config)
require('util').on_attach()
